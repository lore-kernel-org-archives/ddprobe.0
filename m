Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7B64C601
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716198743; cv=none; b=HE0GMd5zuU3ibkkG1ZQlbdG73tUxnX1x5vjHd3n/7LbcOnf8NB0Q/uTgLcVbbgowyWgjjG0r0WRnyo8+CDU+7+4ju0QTToL7czwlczT5R8BB8SKcZNsVSgDUqTO1GFYRl7HAI/sm/tvGdoNo4YWHlxPrfheEBZmFjyT/B1+Mc2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716198743; c=relaxed/simple;
	bh=kLJ0InBGiT4rp9yoFdWJx72VN3iXta8Eu/LQU6sZ7WE=;
	h=To:Subject:From:Message-Id:Date; b=i9T4r+I+Hxn8c82CJhqQaYF3et49LZ2VPa1jWNW1PmP8czL1puXuAbus3Pp6Di1Rfm+TuUNT3ge0qXr33GA7HFKxLLWPAYMMscDcmpFuQv1pJ7RCTUzGrF3T1nhFqDd2xeGnHA/djjpLxvVUT5IIe2jbvnV3Q1FtStboJKsJbbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1T39JTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1T39JTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A24C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716198742;
	bh=kLJ0InBGiT4rp9yoFdWJx72VN3iXta8Eu/LQU6sZ7WE=;
	h=To:Subject:From:Date:From;
	b=O1T39JTSDXOGtUVD6hAQVHjCVzC/aWt4E1DzHORC318mujTy+H2ZLxJFaps9tMnjB
	 3BFJpIwpeqg2Om1THLbejqC9znKDYFInqlHzWPB1f5J68ITb5VkaQuywSDv29tnNQ4
	 wOvQfCi6xkNwjFwJfWKnC557Ya8aXm0G5q0pfiE+9eQcIMxMCgP8E7HkXM3LbP0X1D
	 H/atM5m6NTOjJd/9BhHab0e3F/EYY3norTf6HSnE1VgqxrvdWyLXUF5Eislx2Vf5YB
	 SOhqJojXo1PfKExK+eCvwtbB17RmAumbmfokjmvN4PI3CAh60tjVPYaKwPd+72p9SW
	 YTKcIp5OKe6mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2F4C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171619874277.5237.11875685109039647992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b683bf06eb82e332ccdfd91b9693ab6842bab0adf04251eecfd027307a981f2
Date: Mon, 20 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716198742
