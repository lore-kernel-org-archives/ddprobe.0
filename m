Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A65C175A89
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772363094; cv=none; b=KFegrS6iyyVuY5LONgbEw0N4HFobO2ur426O5Iv/EW1ubCxQ7tCzi/1gbR4YedkpGvStPV0Kk+pwljicqCAPIwI98LsvhrTF006Dntoo/+atjCF9dSTBID3YIZHRPUqj7NHcJH1pNxG0U9ssgdJRkARz50Yg09ng4Jz9qyxGnV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772363094; c=relaxed/simple;
	bh=hySHLQJLoqEfNfm4tPkUy04sf2ntOsLS1wX+elJ/kwM=;
	h=To:Subject:From:Message-Id:Date; b=iSfYyIua34qhpb5iWscU5OEo4sg1hM9ERWDvgU3/Csp4iWEzic1p5bXa1MK8wJqhWWwBFAC6CnaYDrwxP8N8ByGwzFe+E4HAvq24MVAQuSp0KugMN8R04zq7uYaqjAkF/sIRFuuOqfCVuGFhRk4cRfGsS2127MS/LKuTRnp8/7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifuZDAcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifuZDAcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FD4C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772363093;
	bh=hySHLQJLoqEfNfm4tPkUy04sf2ntOsLS1wX+elJ/kwM=;
	h=To:Subject:From:Date:From;
	b=ifuZDAcN8NG5gP+CGajElBasTJj7AET4LcJWMehPLUoc9Lr6ChMKRAjJULrfBFSI7
	 n5sug/cGkdYz6KbM/pArO3F3p7iLL+CHe9BpZ4rF++u6tXwzh9K4c9MPhC03/qUnTd
	 zoaRy2UNazho4mRQqG0ljxtRDpVFi8+/TYVnlSJYbmtPG9o7upZAXCxroY1EmEsMka
	 kPug8bAt0gM4Ka/2H6o9NK0QqJ+gRVIoLuAwHgjXs06xt+pbU3ddYqhKf9cEvieoPL
	 8/jGDWvZjKQT71TqNKmu5GPWs/dplyJMfiI+DlsC8Rb409F8EmMqCHIsSaMmgwgCS8
	 2U5DBewI4hg1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB321FD0061
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236309367.13001.14716032263132076741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eebb2b7daf196933ff461f6f002b4073400fad2466bd0a713b570f2ddd86f8d
Date: Sun, 01 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772363093
