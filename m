Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1659F8F7A
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709529497; cv=none; b=eIgEkbNES8iTa+Ym/dyOsutGJbMNa6zaqVXh4g/dYHEfwR3/X2nqzPlgLBEjyRx+jrLR2XGIwvq6ahHgkJ9f83OW8+23CwqMWvf0sLB+QUMgPEYlFkTOS3W00eTlxw3Djxu8R/WmgEH28flQ+FqcJuevZY8SV685zJSxzn5LhhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709529497; c=relaxed/simple;
	bh=mQ+CnyN5jrzTrpW2Ka7DPUqwW1MPsNI0SeZAm9Rt+4c=;
	h=To:Subject:From:Message-Id:Date; b=iF0FWLaHS2whIIpmDiOT5oSfeS4cQ6VCvAz2eL9zp5rJINso+wLkjwqfNigslCl9uM0dHwntPCmVEMc5hMvgcVP0wwmZw6TZXFQCXuprH9KcSsLvCgyrYe3Z/0XLhq2ec0cnTyLczKJ4gp4NLpUQt02LjKtwcMPeFmBBemb/c7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYNtk//W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYNtk//W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 866ACC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709529496;
	bh=mQ+CnyN5jrzTrpW2Ka7DPUqwW1MPsNI0SeZAm9Rt+4c=;
	h=To:Subject:From:Date:From;
	b=rYNtk//WO6L3f9xDAQr8F8frLNJDaoYNpaWVU4B3OwXpdsBLB6t9R2qrffZhqFJ2D
	 wY6UqVN8P5yveDAfLC2sZQRf/Xo7ETmVb47RoqXEorTezeGBbswrdOzK7Q5ugU78tV
	 0N8M5FttsuNWAmzWvf5kbLO+c9+9vN+P7JhhIfgeLJVKxByin5ZKd8Y2OK2x6vO3t4
	 2g973TOVCp8LufjK462no+6SaSpDXpX4Z9/faHzy5Wed37GPZdCJOOf1m4lkDDpt6G
	 lExHBbLGTJ0hI9wQkuTV63orwdvzo6WpnhS3pR7IEmEsAzQoCxG/XTB5xB83wtaj+p
	 jw+H503luzPUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AD6C54E49
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170952949639.18856.10501898926181188856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7b414fa9b793f986c79ccfa1b16baeed9a65aaa42470b2c6ad0b49a170d963
Date: Mon, 04 Mar 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709529496
