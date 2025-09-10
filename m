Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF23F9C1
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757470794; cv=none; b=XIWFZF//sr0VJ9qAr95JKuUv0Bu6MMEdJcU/KR7M1jgWFFGPIeAMxn7ZYir+PCnHe49b7V72On9/ZQJ2fqTXrIB4I8AHuetDBmZ0+slC9R7RBkUlhoxyq0CE/78vCNxs/Zv4DO1Xvq7FK94j1H82lAeg6FnHzZiOwUkL6qZZ7a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757470794; c=relaxed/simple;
	bh=EVXtmZpHSkjz2modlhPzBVi3rSn92CDo/S5eKQUKtqc=;
	h=To:Subject:From:Message-Id:Date; b=p3Bbj3IXC1V1xKx3zMkOrTbPIZF8uVt76ZA6AyqO/LzQCDDAOjEIAwI7WE0AxN/ktGzFDVafWrSrkqXfs6jjAEEz2GwMf7/pVm9pjH99HjfdWCLmpfsH0GI6PNSqghaTIDRTgRmWohhcVuiozBgPMXgKoN2G7j/4REa0rckOQbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IugV+DFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IugV+DFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54A7C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757470793;
	bh=EVXtmZpHSkjz2modlhPzBVi3rSn92CDo/S5eKQUKtqc=;
	h=To:Subject:From:Date:From;
	b=IugV+DFoKzdixldaYuy6BRNPbuHccaDL0YxoTDo9ZjiZ7cHG2QWJFdo5rwEQOnZyI
	 OS3kDnV+sKbXTXYbDwUS1W+GZd929+uhYQySNIV7aEceHeM2lkXcKgHC6uV4WbGuUU
	 7gEAG9Pupkcrq3bvGD8Z8m8D9zF3c4ewz3wVj8/vu/+tZbizmdrVKTC6LTVl4zNNYa
	 ZmlbgRVPLpjoHMpO2jhFo9A6glyKpzQcSW/+3C02PKMs+K4taFWm0OXi/BXSrETqWJ
	 zxzwwDrAvpgpUi/3FIM0SYSMjzouPsordigjkkhNjZywYw4mZ44Dti7oaRCs7mUez+
	 YrQlKSmtho4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93154CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747079358.17478.7182743222852417547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df0bcd85523af3b41bdf3cf228cc9f1de0e6d23538b59764a235158705bd067
Date: Wed, 10 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757470793
