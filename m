Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E51322A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782337654; cv=none; b=cye6MdZIMTqpO0wkNiEY1oe0At4ltYfI9l3yrNi9JFuwNGL95E1Boq2c/5x5OA94nVEkX17uAU7hhF09Jbuh0Jd71XZt44Aml/FblmBi7qO1+q233Ceo9ltmwjOPD2KIh2IGIHZIjJPzycio0Rq88jUiixgGYWmuuKe0w2yUDS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782337654; c=relaxed/simple;
	bh=ytyLSwlwPPwQKmhx1CWVtMMYod1RJPVl2+4HGT1KYuo=;
	h=To:Subject:From:Message-Id:Date; b=rWfpo5p274N3UIkWSWAW2gSz1lfdb+AHtXpQ6zpxm4ODGSe1E5auNEPXoRxP+RvevrVAM3cU/Pq1kiTnLxgszKWm4xMjSXBJo/TicBajAHOQo+sp8IOYjg59C+FXrMH4hUW5xMga7+LcDzZ8etudkhZTGnVYm9n4oGkw9FY2ULo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzVx48d4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzVx48d4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4090C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782337653;
	bh=ytyLSwlwPPwQKmhx1CWVtMMYod1RJPVl2+4HGT1KYuo=;
	h=To:Subject:From:Date:From;
	b=UzVx48d41KiXgFS079vc1jQx75RbtuZzT+5lJQl2FHl7b/7/cLo/dajJ23qHs71at
	 U/1jTvQqEz6c3h1VSl9K8JCMfcYgXVnxk89unXAG2F+gK7DwsxEBPzr+0+8B/b2UUF
	 hNkA3gZIsyYSJr2PCLSWT6PRz4XrF57sbUDxG+J5Uil47Uosx6WwaeuvSpsk7b523/
	 zFDfmQgdRaag9k3B/7XykbFQSKw1XBO8S0Mc+/D/DThKtaqIVpGqN/kd06otyPf4Jj
	 v9R4ui2y/vd4sHqpVrPibGyT2VSqEXwuzuW+EzD/0N/myZSRMnwjGITXuTre0JAckr
	 C9E2M1HTusrLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC235CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233765371.12427.5121402139131378572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499705c27eee4f300376a23b0bdf3c00fddd4e767013e201453b7264d42e01e8
Date: Wed, 24 Jun 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782337653
