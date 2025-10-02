Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CFD157493
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759373994; cv=none; b=A/EVJ83nHh5lNgg2J/ELCRBbxmKR4VMPX7ghNtgNGugaKms12iChS2S/9Fq4AyIgwEvlrqZaiKFDphoEq9iX0xfOrCSpdKQM758CxQTaF3Z9UxxRSA68UkVaxb7HkYXASlwNatmX5VLBo9oO+1Qs3l7RMf6MJ2krFyDttbMdRBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759373994; c=relaxed/simple;
	bh=30lVxBUljB/H9njOr5JhcuVF3z3LrS6qBxCon3lTOqs=;
	h=To:Subject:From:Message-Id:Date; b=TFR1vkdLeD6OFacoW8CdfXj+gpeVpn78kvvxlcAGFA6uZxIitUdw5Y5w1XXx+NmDoL3O4sPb0RwNTqXRwG3bbMw6siQ8ULkWQb7ozyJnhL8B2X34WJviR/1XlPvhOTQ0pwwQ/lIv38wZz4Wf1jzB8mPht/Xutv2wRPReY21OG4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4ir20DY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4ir20DY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF5DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759373993;
	bh=30lVxBUljB/H9njOr5JhcuVF3z3LrS6qBxCon3lTOqs=;
	h=To:Subject:From:Date:From;
	b=h4ir20DYQV8YUWBh5GKQv17rqV14eZLWviL2KYFkbvLduc1erv2vNbzEQc7WKkKbO
	 OP2YszGSX+ZlDpGDrwikXqVc8OQz0wILuFZtGh8461CtVfaw0eJ9+VD7xipZAl/TLE
	 hTGlvctMgR9RDk7scSTGceX+kIuS63w4BIlhfHwSNLuDdBrn0QPGD3KDEmjcqMUqvM
	 K+x9KzsElcYXwUA1EdzM3sRApLH27gx6Zzb6QT90FkPWPVSXfWDgq7ltTYvxZ+c1sw
	 UwurKQ2KFhkU6LEwciX1pEFs47sOgCDODxDwDKsqY0oNWu7w/Q+BrJXZ5umqTWRFMM
	 RZeSNxVvKErIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97332CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937399359.17405.1883034628133526142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730c0fa31689c27e9d0b7a162f0666bbe3e37c375f064f6768f1d85a8ffe342c
Date: Thu, 02 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759373993
