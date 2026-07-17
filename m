Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C243FC5BB
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784294314; cv=none; b=SoMBmE9Nm9YadqTtjIY4WrL+HJPR2y0SUlsatZU2DrZDPDRGBocP/hDzqX6WfzkoNx4k6vPXU2GEx74uvqmx/pOEBVdaGvSfPW6NSRqC0NiE+a162Ioc98r+MSMV4nV6R5xwzVujD1LfE75rrhoBXAuLMiSAj3jQrIp/M+Oiavo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784294314; c=relaxed/simple;
	bh=pFji2EfobhItw0RnujhsRdz0QqGuJRuPS/7p1cTE/Ec=;
	h=To:Subject:From:Message-Id:Date; b=VexvpcmIJWs8v+Eyusl3o8y0GsraCJj0R0PPxjkXQB7IyB9b1tH0kltZQ4LJKh0t/RCNksY4LBnTlsDaGsFEYC0ojP9H9frAp2bi9oNtzUKjoySJvd2GV6POmFc4yCZBcF8LzGKERsGVKecqUavZ99jgAXinkBNHQUd5hdZA90U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjkpOpuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjkpOpuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1236C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784294313;
	bh=pFji2EfobhItw0RnujhsRdz0QqGuJRuPS/7p1cTE/Ec=;
	h=To:Subject:From:Date:From;
	b=QjkpOpuFSBdPBB1PWZStCbR1i06AcbLTe8zY3pEas0rqdI33MMmwNYvT/UJ00lOW1
	 HAMf/yiMFA0nSV0IY6ZCIdtcCauCSYXBTgSdfGnlunFznpJytDmYQVxU3WRkRsB7md
	 ZyDnywc6cK1gRXW+5eIcD1HijrT+Flh5vkiY5aBbFX7UoMCZQ3ZXAXKlmNYJ/xVnvB
	 ogu5CKp5LhszpHk9cMnh73ZYbizqz2W182X6QVkZF3Bsm1jhQYohGdqnULBMFTbX0N
	 r0yUunilkze+bWdsCFKKFyldNVJ0ahsSwdw6U0Rf+5goeDgGJEiQWhanvxf2NDcs3e
	 5RCfQSGXFLbyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCFDC44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429431369.17604.3062601717614467252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5800e6ec106b918aaf81b56fa672e45a1c0b4014bb556ae0dc66f3f76eff70f
Date: Fri, 17 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784294313
