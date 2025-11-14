Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AF535CBD3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763129394; cv=none; b=C/GwSI7MOLVs8SiNFQ+TBPSfGWvBjkZVawEky6njHl4JKsrArSZs3CtEygLQDmORYNOvQHcHdl+Ax0ZVNdmR3tajl9BWkvpxHBL3tIOawPrL0Bu0z7iS4wQ2hXWrIkjOw3uq4MxTIYBH1+l4CowwWFdoGBiyRADl82EAfns/rLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763129394; c=relaxed/simple;
	bh=39CoG5K0CKXDtYeG6lUkH/VmYIAZuKExZg8yTdlaORw=;
	h=To:Subject:From:Message-Id:Date; b=V9ug9yn5vRTQHwKijW7VtNeByL3scAFbBsh2YhfbvHHzJGZ19wwGpBo5oTMuwzpNAVExwMS2TDXknloiZktNulPmiR8zUKozW3r6f2XsOrMo8ssqkoTJmR0X1VziJyFVOaZHE5efzSEgF7vp+V1IqGKS2B++F8/thsqXeIurgRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDOCp9c6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDOCp9c6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1DBC116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763129393;
	bh=39CoG5K0CKXDtYeG6lUkH/VmYIAZuKExZg8yTdlaORw=;
	h=To:Subject:From:Date:From;
	b=jDOCp9c6lH9QLEs1yFfeTRdxXHPr6apsRd3lARrXBiA0bKPZIjhT3k9TPiJwXLVcc
	 kp2O2ogenp47QcwEIk7S+IanelQoJp0AVR4k+sZO+Woyza1SummOqlaGjMdAXhhKIM
	 OddHwvPHeKYxBkZnNRKNbLSKG//uHLgnZsOttbXBvsDHlkHT7sXVdkBJzFUazzmmdz
	 l/n7qLpNSQTaC0Jzn4ssIY8kOMaoe7Adoqy2zPss3MPL9BHSHFlxwpATjhdiCl1kVO
	 Go6OdUCw2/tO7GO6tjP5aHuZYgn05xR4vCFwhbiI/1KNrp3GaapIDFweeamnSD6X60
	 ncSKdCR1fcFqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D0CE7B0E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312939358.8231.17461059927387229430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c03d96324ddaa411294661ddab99b26c981a59e7b6138bf87f58b2f6cb45cb
Date: Fri, 14 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763129393
