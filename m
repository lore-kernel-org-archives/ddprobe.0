Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6447837AA7D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790819434; cv=none; b=Xx2EhO/KCL6thUgNFTFHBdX7DFx+ja+aqKhxIWdwUcZZh6W1/GB0NqvnmPaHNGuA3dZnjjKh4dzB4tH64ZONBzW3SVQwMDODiO9WChk49pYd1ineKDmyTOLz/W4VC9spOduNMS/5WlZhCCM5LnelczPe8vcf58Dj52bJW+IyzhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790819434; c=relaxed/simple;
	bh=ESTiMdg5WB+JzaKdcwQ+yO9+5hc1smjEHbYmaC1tC5A=;
	h=To:Subject:From:Message-Id:Date; b=IelxsBEkVWQ5P807Isxz2+zqTH+2xuTYC9U64HtabFAgZU1ZOxZKgK3HKNEeocMP/akt4dU4vMhEeytwBqpin535gFDERcr1VKIkbQuE6fgc3bl8MbBZzUzo7jUBoqJ4YWZlGlBeBWEOtUIwWB8+v9daXTnjdrhMFZ1Tb9ddCpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It1LnfzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It1LnfzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D605BC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790819433;
	bh=ESTiMdg5WB+JzaKdcwQ+yO9+5hc1smjEHbYmaC1tC5A=;
	h=To:Subject:From:Date:From;
	b=It1LnfzZTiwXazvUzCA8cjAszntd0mOJMSx4/MImYEC4nQEqxevCLq9kSErmzB1Lx
	 40CEQVVExZdg1UnwPnYDa96Z/dZ/RmIY6knvm4q8G8FjutkDA1hOMpGmQA8QSmgk/6
	 VMgk1fJhGzTYLdUL5kIZHadTIk6hXEF2u313lqcTJtDY4rr5jGA+3I40rfD+MTH3c2
	 wXGT9s8XwHoj24mpsjSc3xKqb/RH82zNRicw8duz5MNoZiwlq+vBhjfnLrKmqUW7vb
	 uc5PuaVNwt2jJYgPP8p541UxTvsXOpfyepS8winx+3frRZNyZAY+JJflLUKnLKkxph
	 tDrxWfOr5y8jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB8CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081943370.17565.14765881371852034214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46227c45df4d75fa50ab71992ac4a2971e5c698ab5f4187e5d1ed1bdb356ec8
Date: Thu, 01 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790819433
