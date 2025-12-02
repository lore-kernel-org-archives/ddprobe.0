Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FECA2F25F8
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764714174; cv=none; b=iTmyJEzU/1yIMqO/U63MSl983WXFktP33PgFYNHGkzfpxisATZXPw2nUpw8k2EbSt19iD8MSI4k3rX4mOfOHUkqgXC+AC36RifSjHgXuO+i125+FUUuQyBQfYsppp+TAbBvfm4k8uYyZfGF2WdqSC0IkVKl0X1ncogwBw30FvHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764714174; c=relaxed/simple;
	bh=nBav8rWS45c/MIlv8Cac6YRGnshJsq0ciiUiTq051jc=;
	h=To:Subject:From:Message-Id:Date; b=EZrXX9ybEAT8e4eu50BKsDyaSHzbV1sidvm7VCv/psm/fkWv3YD+37D+l80jGZxKj1gdgN8DivO0SxguScftg3EYyPGGL35jFpafMrNto3bxAFLH/EHXJV6xT/fnWbHK+/KBl9VPYBNvcp31Ns1tDnVAjlZfA0WEakOW8xd16xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmNbfYLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmNbfYLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C61C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764714173;
	bh=nBav8rWS45c/MIlv8Cac6YRGnshJsq0ciiUiTq051jc=;
	h=To:Subject:From:Date:From;
	b=lmNbfYLc7oz1W/HQK4oqGg15z8OKP1ksYRChf4NXExuKOTMEh9seX1BGvKZAxPPU+
	 6h7SAYsrgN12qtR6gBj+Lkhg+Ypa1VcWWXBCkJG/GWgkmgtL0BtBCZXqOGUr5LjHKE
	 7UJqGL7NiLjDVYRdQ6FFEywTXyccB1UlR/5H6a2rODcDmhYe/cJWu/MDV8YnstIIF0
	 /dyW0T3UdPfG9HLBWm/Mt7Zg+bONnhQ2r4e33WxEy37OD8OFOEFb/yVzi3g5fZUdzX
	 XOeSplbaYN3l6NofLxpjC7/tsSQPAlUyefaDWeiHSW7Iro+Mm8slFQJJNmuCSi0xEe
	 Mw8VD7JQSVzrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4FD1267F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471417358.10066.219939537224277914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2b4342bf3ee4082150c924dc62040d78547214d21a5756f4b884055f1d4b89
Date: Tue, 02 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764714173
