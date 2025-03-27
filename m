Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F971C760A
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743062994; cv=none; b=lY9wuw9U+dceKJ0CL2Hg77V1wGawA++1vw5tU77neSu5gqetNIFaXCQyzrgnXcrhviliEVfzx/d8/+JXl340aLkbd8Xy/5qdq4LWGyS/xagnCBSClpvHmzVEdhAN4DdYVBSe9s/0r+IL77EaNv5OeEcVUZpjT3DwGQXzvsyjZFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743062994; c=relaxed/simple;
	bh=chHKLkG1GH2ZgfTfXT+yQhOaikk56Azw24/YBVCJxt4=;
	h=To:Subject:From:Message-Id:Date; b=V6x0FqEWrav47WcBJN72TfnZ7LjARfV1YCu+FdUyWOT0wzR+HOrgy/WU0/BqEG4vGLeN9fkTZghUAtW5o5Dio1HKGuaJyEsmtwJ3OxeQ3wF9JV1UVvZIcu26yly+RknGV05O/UkO2eYiJgdE34uCunJVovXHcRH4m2HGqAO59Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eceoKiOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eceoKiOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA415C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743062993;
	bh=chHKLkG1GH2ZgfTfXT+yQhOaikk56Azw24/YBVCJxt4=;
	h=To:Subject:From:Date:From;
	b=eceoKiOb5R9vTn6LcH1rDZ90QErMGuA66r4Dh9pHScQVbPirVff9b9pVoY8w8KA2B
	 QJJEYQq1sC8z90c+FazTzSni5k03ShQXUZ6ROWGamV7SsxrxTgLMDGBsqU/Z6b4tzw
	 3Zh/ujrYVquu2Q1KyS1yoP2RBJM7mLvIu5RulcD3Cp3oI/oHiAPVCaEflfyPSJvRbk
	 7xykZPPJmZZNI+uzoYdbBFHZNIwBthASDscxsYYPj31zZacuLH9bkpvLcMhsK+Nbsl
	 ObvCWPJg/vFSn/9ZlyiLaCjRmxcNxKBlTIO+5sYy8PjqC5rPVSp7dytHvEFtap95xT
	 WexJaRFmd7XLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95146C3600C
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306299360.12216.5514399188980395673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273459734995b56e9e1c887001fc1fd1f66debdd048bf0567f4b15ae475cdb23
Date: Thu, 27 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743062993
