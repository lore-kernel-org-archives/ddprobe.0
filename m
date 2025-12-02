Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0A431D723
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764690174; cv=none; b=P170EDTvey7GDehEsHcdV0oh00i+FGC6Kw8rshD/XNz1qNZsh1XtbiTPuLQXE+2+FZKT12DYr0j0kyQLs2hcwBLCOxYH1Mi0/K2zdHOlVM59q9bg1BtzPyTqLBTPrDAr63ff+x45D4tVG2xrCn56unGdZfLO2Ub2koASPGsnr6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764690174; c=relaxed/simple;
	bh=IJsL5aadmCrAev7tUrMN2hr6FVwcUAqaovb/m0UUvHY=;
	h=To:Subject:From:Message-Id:Date; b=PVSIaqwfTpq9Y5dZt8x9rQAW0ejL24SkUAmut3K4ViCW6/471aJGlO2MjUP+4UY899d3iWVuRurkDbFDR+DKQ0bD8M3ZgPbWPvKSL4CgNZCYbT5S2smQWsw267xPanyukHZEmmT/EKG9NDa/qWmbqOIH8JVSe0HGWiljMz+p01Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTsdcZuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTsdcZuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB890C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764690173;
	bh=IJsL5aadmCrAev7tUrMN2hr6FVwcUAqaovb/m0UUvHY=;
	h=To:Subject:From:Date:From;
	b=eTsdcZuheZtfm0yIFlnp3pKLf8hVSmDD1RBYhbY0FtB06VT9IUjmkVj5Cs75tgvp3
	 1BruQgJZLlZP7v+Py/xGs+AA27HXV1ArQdGqq3TkhM/M7XqmkRW4dVM9vwQOZWUsov
	 LIU/fjEMOyTO1v+3yv5cY6k7sZxCzTsv4tdfy1/2izzudCRP1jvgHuqENQ13awFsXi
	 +zkUDTZ38fVK33o3y/nt1cq4mpD4z13h4y58IwkLEv4aQIQpQBxe2RuDyRL8jfCuzE
	 ytbwedMy/iCcOB2l7FlufRIGR8IycHmSRylWXJFyvvwn7K0voOmRaGVTzCF8gSnvRB
	 hPOY2CDxbfwJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997E7CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469017360.9079.12919786785020702524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1643738d668efe3c62e6b9bb6900808cb2830242c3c48f4569effe2d66dc38
Date: Tue, 02 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764690173
