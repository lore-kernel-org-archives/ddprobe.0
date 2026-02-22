Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1C13EBF36
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771727694; cv=none; b=rbsBUS+hPuU+AUOsxICfM5s9RAVeYCtZqdfKEv4MzDW23EG2uty+PRMcVS8GCiPOT5OZpAMd/4Dub6ANkK1RvyCjQncgs2VnPUaj3HJgPX30GP/nAGhVWMzcUXh+rFLw65nSBai8EUixlbity/nJZBdl8zXxUtd69MdVIpxeUF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771727694; c=relaxed/simple;
	bh=kC9WAOYrccCe9ta6NOD/LWqjyJ6llc4i4RvKzLfc9TM=;
	h=To:Subject:From:Message-Id:Date; b=CfiTqDrLMgLduQsGXsHm5vCLQ/YMf03Atl0h7WJvKEUmzTr9zyKJ/VeWBccbHwMhrwAuM/MmbkQr1gTGV5jRP2pn/T82xq1FWpwuy0dHNbh2kGETfFncrQj+cMLbEtiDt8UtFy195/XZ2Kr13jliffAD4ZWayNJuoH8TiHsqQSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/Dszr/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/Dszr/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9D2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771727693;
	bh=kC9WAOYrccCe9ta6NOD/LWqjyJ6llc4i4RvKzLfc9TM=;
	h=To:Subject:From:Date:From;
	b=s/Dszr/mngzHvhMbyhZ7xSc7VZgyzU7+L2rfwz4Uf/y11rMvoyxTs8tc+fkp3T7DG
	 kXX+El1KAXzMRdADCyuAF7u+iQ07M4Al6pZ4D4slxK5DiBouM85aOieQ7jC78I3nDI
	 EzqZb6wrx5sYVeG+EaezU+RVUBtWl0JgqKkcSxcvFXUSjoAsWD3BATPlgWtjx0fWUe
	 tYw8flgUu2fo1p/vG/XkusrE3TwiSCwe6DK+rBaFM8euRzLT/3IK05ap8QVlmQ1OAD
	 mQFo56wXRCX5cxcfYxog9a4JRMSPi62BXSyUE/sYyru3onARXFv2mkz62OT+x7qdtq
	 1vXoyTRw53tAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9528EC61DFF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172769358.4511.2650119239425702278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b2ca9482ea80a5ca39f90679e8c5c0b933a1e0ef44cd56ca0c222563bcf813
Date: Sun, 22 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771727693
