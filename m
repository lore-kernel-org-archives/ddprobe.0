Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6681734BA50
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790360434; cv=none; b=Eqn/RwATEO+scirCzovBxodVc38O7oprJFvyU1TWr03P2uE6mZnKXdHUSBwQoHLzQ4BaAaZLS7PMOVg2izcl4yay2ZeaZrQnGC8Qa1stm8YJyqzrRb83GHN2o1sx56rz//Ccf/D1mJZIU8We7fGa/gZqcNGg8V7/PAFQRkM64uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790360434; c=relaxed/simple;
	bh=NepmS+oJ0XthcFKNLsSQvqbMmvsSViaqzewQM8nw7Rk=;
	h=To:Subject:From:Message-Id:Date; b=oWmS2S5tmv508bxT+QB7OIkheqdIUpDNU/0KniyRnzsZWSJ/NIArt6vBMztH52x5G+qkl1N/2VRmgYTj/cPLmRYYQj/urKWCT23bb0C1N0Su16nrYKJ5Vg3iil+MDK0qBIjvWsA5HNV20zq6/eoTZgT6p0NRlUO4q+GocZbBBFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWcrwdBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWcrwdBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E088AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790360433;
	bh=NepmS+oJ0XthcFKNLsSQvqbMmvsSViaqzewQM8nw7Rk=;
	h=To:Subject:From:Date:From;
	b=EWcrwdBZLM9IEgpguC2UBgvKfnntC2hFQ67pD7wHLoEpw4TIVy3MbZyIPAv/F8kK2
	 hGEX7lsKs2QGYN5rE/QOV6bvrrQTFmyM85jbBPwXZP2P5NbHFhAxXMUgpv0+fHftgf
	 JE1g0dfV5xdzmjoFFOTuAMO4L01a2HxJKmqONOrMgsV4VPfhfzISEc4raqjjhhNU49
	 /P1oA9bGtsNBrztCYYOlEgGmRawXTA3XOeGG9AeWqiaxkMnEPkG5McctAxMvLSXM7B
	 r3Z9PD8U3Ac04zVOqjy0DqVv7vnsMYHRnrrTUU3LThEfsSS6TofpE0l62YIvv9r1nD
	 ShYnLDP8OI5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8572C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036043374.8587.9848301348152816795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d421f16e8394c2ed5de413db2006079d98b76db3ec53916a1ade77ab16c8d3
Date: Fri, 25 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790360433
