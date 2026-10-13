Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B37555D864
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791927634; cv=none; b=gWvpbmJ59hoRv+mk4+dfes6KcOWWms3TymYXWSlNEElCsQkyLxTPMWpYt+1j3V3blCJLxnkG/QWvr0IG6CsnedI2UqRAcfDKNteM0JPksRXK00NCIuDDISNH/2+ahF9VJaQ7yzdcHVJrFWhx3K9vhPeL0ugMIQNoAwB4pyscFaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791927634; c=relaxed/simple;
	bh=cNf+w4xpMF9MSKJsbDsVequy6aX3rZNgfZPEMJZS1Xw=;
	h=To:Subject:From:Message-Id:Date; b=nPCvhy4ax46MuEgUsA1LT24vnQvlaFJk6KZaYef/KJcz2R9XKVXdSS+iscqX3JyuhhkwITkA1i78CIo3mebv4pSUekUFO2dvUf19R3kKml7ID3G4zQtIDGikmOIP2lSFsiyk9+YfIrNlFCbgnIYxjumqE9AoAikFQm1pZUWfq0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbfpcFnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbfpcFnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D3BC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791927633;
	bh=cNf+w4xpMF9MSKJsbDsVequy6aX3rZNgfZPEMJZS1Xw=;
	h=To:Subject:From:Date:From;
	b=CbfpcFnk++jrY7B208dPSCbcFFlcUUckdkgedlZf03kkkje/tPsdYApuJcLW6+dRd
	 BF9wBVXjU6v0CEkP8iWytvlKf+u7ypnAtdpErI3e/dIyUgc+RQSQIH7T/ThsZJQiTO
	 /ywuMJtmv8Swm8ndbf0pfK2Gi3TF//F5oeu0GyBuJPk6ZbUmRQG5WpXAZLy/ropXlo
	 gXFIiTwpWLa+d19ybgfc1gfZORpnHD8nfqakMnSBforyC/DpGCaUGCUtf+vJuAYfPO
	 +dPR765iFU8H+oSy+G+R9F0qj/Zhyi4qygyfwFPUQtSUZFq0+aDLUEahci9nrWMB1k
	 V3s2bA3BYXkhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF552CC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192763370.1238.16215450378294182855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ffb293f4744bdfdbb83241a42d090d65199210271f3f6b38743e58870660aa
Date: Tue, 13 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791927633
