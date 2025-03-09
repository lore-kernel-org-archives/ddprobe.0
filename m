Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADC31C1F12
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741519734; cv=none; b=CVydl445p97+fG7VyukjBupJRqR2lqgRCYmysX3Izrv2NypEYYD37QAiSVMYMojbxom92fTuWIWfegjBBwJvH3ST4SpNgfHscrXpqU2ljN19QegKdHL1fRqIN/8eXf1+39AyWVhaK3NZqCRmLakipN+8YJUjrNNcoN3uhTBxLTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741519734; c=relaxed/simple;
	bh=I9OMAkJ1hdEoYvVI+pFmYwIs1LMz86dtzzPbuKuF+HU=;
	h=To:Subject:From:Message-Id:Date; b=sYL1bJN5T6L18fwm6TzwjnIbz93ILeyYx7ydvxkvV8sbnbCfsndnmNG0WkR66COqus32/rDutCXQd2ydI0ronSKmji16iVG4f+S/F07y6JOro3Dczk7ut0B4Ftef15EtGvkm7Bs7fBXFig3fA/9fIB1jEzNfnx4dMIiSVQ0g5qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg514a/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg514a/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B1FC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741519733;
	bh=I9OMAkJ1hdEoYvVI+pFmYwIs1LMz86dtzzPbuKuF+HU=;
	h=To:Subject:From:Date:From;
	b=rg514a/BJmYgPonPO6XtvFbHN15xpWPSpjmkVcpg1MbdmvQ668HuqPLK2ZlyzkVyk
	 66Z3QYHK2pLhlU/zFl+lMXOvoM7dTzskyLLFxZjvSgTDzvqAnIOHWdimrPkEIBOJYg
	 8HiO6aDGA+rVfidZU8hH3N7oDKdLLnuikP/15h6zrx4CWvKxzQ12Hhg+KI5VhO93Oy
	 8AjhibXrXLxGLp0ro6I8rbGFVxsqPWftuJNoc9S+tsz75Ui3RD/0jwG9A/5cRjJsVX
	 3f1wH7WWB5WtSVMqdQw5JMGHfwrWVjezSTYd1AQATaqqxLXCAmZvSXLCHrVcYHgqcy
	 pvrzh04rsWKfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96918C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151973357.21222.3883010740085052923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c5af2687cab1cf9a2ccbe8b8c7abe8bef5f41632064df0f480f1cf403ec636
Date: Sun, 09 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741519733
