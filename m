Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE2215624B
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751496594; cv=none; b=N7hiqWGc8rgEaZApYszCZ0X4DUGJguyjDCuD21JBagPGiuCKZa2HtIyqLuaFZcux7Fe7jO3PQqh/bhrsZahmsYeFE2agtJwm1MAKZbMsP1XFy/e9bog78HaWs21y1Vg6FpVB2/OMQVtJkxunkVpjOBum47mOuv9UIRyA5NJg2r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751496594; c=relaxed/simple;
	bh=IEHiMaDAK+WpQw4ZWAqa0jkT2hwqzE6ELI7QfGzaMVU=;
	h=To:Subject:From:Message-Id:Date; b=d2P+UwWB35clB/tsVqI1DX2xVoViwI036yOGHMGESPHoZef+UR6LmVglEDlEetNU+xrJW/VdK58ex4bYQSckOmDc8eDGmihB8I1z/X36X3TG8srujEYksMLn7uSmOBOa6da7IV+6vtbGGAPuPOjnNZSjjL9o8TLsxl+yeCtKtEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKmwAu4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKmwAu4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5662C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751496593;
	bh=IEHiMaDAK+WpQw4ZWAqa0jkT2hwqzE6ELI7QfGzaMVU=;
	h=To:Subject:From:Date:From;
	b=RKmwAu4WmZ7sQzpssRHFjB60i5fK1ECbzTMeoMNr15zJM2LaWnbigSutVpK4c+fGW
	 YrPiQk3BvdpxaJrVIijMv0HWhKsfl9OT8xxsiSq6V4AM1TGEbW9ypSfaW6ScdVRcLR
	 PvDz/xo+qDeCdinOzRlkZJpNF+j3wDlI5K9Gby4Q/NFplo6x0aiGBO29DvbA80mDap
	 lQMzig9uDY+0OWb9qbL77wBT7VvfjoG5rwgILhYMO39t2lJciV/CXXfj+OmzaT7aQK
	 1bGcpPEMkzoJ5Rn+omYS2lfnI153NsQRKTKoljqd9T0kcu3j55tPhLERCEY568V7by
	 7Cc27MBx+HsCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDEC8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149659357.26659.4175616240965793480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76a57e76bb3b5e6c7301cdd0e2e41eac780461dd901be49de4247d93907ee34
Date: Wed, 02 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751496593
