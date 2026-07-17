Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B86637A4B8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784282314; cv=none; b=M6ajR40oojUQgGW5Z9a4BzXANug2iu0bXzH5a+hpBytrhQhUq+Uy7vyXIIiOE67JPutNCUk4VdICm5gGoeJvMbHu9n36ev8gpRmLn8FYAwYRIcmQYRCWx2DFzOhCwRYvxZsEKnOAVSGzPtJvDixtQLxDj/ea+SpkAnZypF4K5mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784282314; c=relaxed/simple;
	bh=TCZEhFRf0wrekZg+E1vkhwEEN68eLzaZKXwCAtGPUGQ=;
	h=To:Subject:From:Message-Id:Date; b=jwQGIQ0mUf/l+H1LUVrZB0mx4KjCmvw+1kzSMj4qFG+bnfX/uWNLLx1lWSStekHV75wnxBM9Wgv105EZzuzDv6ySsjcfQJ8qkwN48HF87IiCw2QyWnqjhwGu1XARewtFufU3rrLPmpoX1XkvdLugAN4p3Y33YCh1bt6xzJusSO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX1NlX/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX1NlX/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5222C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784282313;
	bh=TCZEhFRf0wrekZg+E1vkhwEEN68eLzaZKXwCAtGPUGQ=;
	h=To:Subject:From:Date:From;
	b=QX1NlX/h96/DPRFVnc5a8VwVtDeEXgLGAjZLo2Z/Wk7cwamt5Q2lfYGIC7Dh5C+V/
	 jA/KO8NhGx7bKTfd36LEFFLEbNuHl4tWc+iqoLAyczA69JGE8Z3thXt3tKEo7fsWYe
	 VeH+XsvPlRfkDA4A6ysL3qoHEkKNEDgNrMbG9EpPuoxa3OizTAJ0z46tpsb6pvUWG6
	 Ka+EnOz/rkVzTtUFj9m9/+KcG+fAC1K5PoPBqnvbpbJd47STeZ+0KQVx9vdvAHEgMJ
	 xFZ7nJS8da5fnSTFGRI25eLSfTsParaqHj075G6U0usLGgNbWV3ezAGrdPUxM/Otbs
	 rV6p5BgGRH5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB37EC44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428231368.12781.2542039492355429180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a79e54c013928e758d6e5b52a6a691bb1a6e6ea3011cf69e7166bf151fcf1a
Date: Fri, 17 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784282313
