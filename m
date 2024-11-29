Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29124E545
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732911354; cv=none; b=r2ETEW2tuvbdpJoQkOEzJA6+DCh1jS8924VLS2DyCFtYbob26rvu2u8rodHDm4wJ7cHpGqYYewOaG+BzPX1T4SCxeP8Zz+qqz0Mq8i8T0St2ez1hYybLNerOyZ/xkM5tcorA/moFE4X6Vo2+aahZ0wxLryRNbjAAxZYHhqlh46o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732911354; c=relaxed/simple;
	bh=gYGF5jQbk9U78AiCWo9VG4bI4fpZX5ew+Cib7UfDWqY=;
	h=To:Subject:From:Message-Id:Date; b=lVqzdZyZ374QF/vbCGWSLKBS6eMO385PA2AvIjYfhexnUVULewA04m5jwkQb8aNA/W8WIaLhbM7xsbvw8VUJIbN7WtxOSZ1t1+UczDtQQ2jWOYnUqzlJ9mcFh2VA2YppJz/cSDD95iIMpeDZdLsfqXHHMaWDi4PThWoa5NRcxXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO8s9gbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO8s9gbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7CBC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732911353;
	bh=gYGF5jQbk9U78AiCWo9VG4bI4fpZX5ew+Cib7UfDWqY=;
	h=To:Subject:From:Date:From;
	b=JO8s9gblsir9gQL4gwHz82dcgZYc3N/JKjZl9lK4GAuMW7njV+i1zg0lHlslCqZKW
	 rALOOU4LU+KQQHdk1/VI7bNCFiJXQNUKNj+Na6ly7W3+D9mzthi6P5AZM87NdhCZJS
	 mD+WpE6QLOp6K1SQr+E+04DxXnuFSeSrz2S/n8LQtZKCCLatzKKxO49ARV0SIP155M
	 c0lsp0UeaCEjnnaBGAbFNoOFJIkH8CVRTCTAQTtEVzLwWu4Trw6HbdNQkPCs/uuEuv
	 tzoYhrwbAwBCrptqMD3IrDbwaVqSIYnHZZOHpKaBkC/pLyPKnJTMCqrhGPHNkSbAbA
	 aTNGX+aJDq03w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96958D729FD
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291135359.4051.18309102613568604236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af51dcfbabdede6ea79e69c752eb7e135fcab3c545e0cf926fd391fced980c60
Date: Fri, 29 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732911353
