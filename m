Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF99E3A29C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709262497; cv=none; b=TPtLJi0O1tAXeHx4XtY+LPgdcrlQE8hSXFP8gx2Ix+Xbx7I3yiYI1yarf1tuSHPiWmUuqq78eyO1aOA34cKSqIGH4RjeQUOIvzkjLDz/lKgQ8+IsaoIjyJABNp6Qoq4QPDR4IFV5oylBFT37cymg/mIcSabpx42BEnIc86UwBMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709262497; c=relaxed/simple;
	bh=bG8Y3VQKKfYqKSoMPpxTMsnvqiFx5Hrk8WvpAse19B0=;
	h=To:Subject:From:Message-Id:Date; b=eNIxtZFzYfHlSBERiX0w50Pa9R5R9bhdtSC21gjIRW+sMMAbeX8CKNj7GGLkWb1LVeMSi95iZISdV0CFftzfnTiK/s/62PlVtqbovLT20wzesBz4CpnfSqbjDZQmKviIKlBcisThLyKjr9axrzMnluZPvoNSTlWVMqYEek29SM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O21MPPHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O21MPPHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851D3C43390
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709262496;
	bh=bG8Y3VQKKfYqKSoMPpxTMsnvqiFx5Hrk8WvpAse19B0=;
	h=To:Subject:From:Date:From;
	b=O21MPPHgISGmmabddIC/3/UTCsw0OyXMGFTB76IXyxXK55DLjlgOh0nhRPkUymzhp
	 Mda4I+BPmh9RuK5sAWzFu6+srBx9HzmjggnGiRcjARZ9nlzXQSiEPHkxpjORRU+v/S
	 yeMWNzvAIpL4M3O2EOv4V0ueKyGVik4ai/kzoxXIz+vfKZw7+kVuwBLNNOla+Xpxnv
	 Uz5koLCIe+EUHyARw/ZuWEUcSao58jGw7AyXMhy3vTAkvb7LzIPGft64jw9dINbRXU
	 N2WeCd21RlFtOOrVsxnQeZF1CM4sK2I3pS8UsNgiP3MJh/HZ6rtYs/yuswVONkZatv
	 CV6yqYGgmDTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63714C48BF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170926249638.28770.16642561404669650445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d463c28a96375fddd0599c017dc09f3f47da625d18537ed21ef38638099ec6a5
Date: Fri, 01 Mar 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709262496
