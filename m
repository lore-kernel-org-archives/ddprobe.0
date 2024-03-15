Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E2A6119
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710470897; cv=none; b=KFBCLakowGCNn2JTjhM4UwdmlGbAu3KLTotBP69AhfT8r9bpkhFCjYkHilDzFN37JYyd4OItMS0EsDJrB7Q4+hAhxouiYTF6h64BwgGUVmc5HDDTpvdY2xrX71ze2p7CIdlOFV7f6MfF1lGHXTuhKgun3AWAnNfl94fmMOsk+jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710470897; c=relaxed/simple;
	bh=1NeZvgeP8hhYY7UcS/r5ZczNiwuebodswxMG57avJK4=;
	h=To:Subject:From:Message-Id:Date; b=KpD8oSif4uu1TGXNvlK5fJ0VghuxAdIyXRIidaGcGGQrLPpeqIvJ3w/2nc6bb24aWLYLkZ1px2i40WmF9/jCChCZX/1TSjanZ7s/JImF9BA1Ap1jP0krG4S+CLF1KLfNDEqehgdQNjx2BJyGwHKjSjsm9QgH2Wn4c0Zo/HBjnZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pa/U5fqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pa/U5fqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA92C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710470896;
	bh=1NeZvgeP8hhYY7UcS/r5ZczNiwuebodswxMG57avJK4=;
	h=To:Subject:From:Date:From;
	b=pa/U5fqV6pz5BjrXuqI9Q+4xWpdYnphk3tCJECX0SVO5q2j0XydgtTvlQjLyK364V
	 +whtRjGTgGOsJnrbLSuG1T15VanKyEQjcrzz5p96qPfeYqyk6phXO45OjNEsk0yUZD
	 FZFgmH2Sv8S90bpKVp8+F1lGhfLU0g6890Jrt1Szp1fInAKeI+EZ54G2U58CKfQRAC
	 s/gfrRJJ8Xj7GAmbtQzewpqJvrLjNwgAVaYkjI1e+7lFv4HIEADuqicXcTLzYyiiHf
	 TQ0FreDJnGvhbAcuKyYWALUNqfV4eiePYdMKa+vsiHns4wlWiI3UEeaYADId+u4mfr
	 sf2HXyJSEBSew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC88C54E5D
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171047089641.18655.3201510789069098930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6468677b65b490330b6ade9c50d5170e8996175c3ac6860f78a0b4ca6507c79
Date: Fri, 15 Mar 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710470896
