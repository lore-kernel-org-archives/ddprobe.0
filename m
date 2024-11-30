Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3E11C6A3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732964154; cv=none; b=JHNlnRfgbwYuvWUbFBwT5JZuy+zswYaOpy/C+eSOpCVu88r4pJ0Cak0dsqo/91OBMhSHW3VzSqi/sLkdnJcwxxJaZuJJiIXkf0fzRoa3ESZc4ou6Gdbykem6sU8MgRGFu9J9GPCA2YFDs9UM6A7hkddROzPVTZbMCDLWyz9kly0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732964154; c=relaxed/simple;
	bh=5fYY5Z5q7zrdQdXcAhENy3GxMLwDkeGO7QVzNOVKbC8=;
	h=To:Subject:From:Message-Id:Date; b=HvYtyol3c05mHhcY8iX/q+7aqyqhvZci/s6zJl5xFzNSd+WVdrbTe44aH39JC+nf9aw4b7cOMb+sfsI9+iIYhfB5tDe7oYCk6pLjwGy0iq2D7kaV1syLglrRmnq1K1ASFLtbGzcNa179Eqqw+OSftZWsMm81UzWwsq7muZwBSq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lyc8B9c3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lyc8B9c3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0556C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732964153;
	bh=5fYY5Z5q7zrdQdXcAhENy3GxMLwDkeGO7QVzNOVKbC8=;
	h=To:Subject:From:Date:From;
	b=Lyc8B9c33OZoNoxS9/NS3h8o8X7Mee+P1NMHwB8cdOo3UQuORdau/zHRtCYr3gWt2
	 pDzhYVxNl++izM+i5FjDNJN/kYUl1NPB2lioDRPMMHjMjjrqOWFyRI+X95837BOioG
	 adVwEsehJPLTyf4euQ33htLrUPXyWtHs7ZDi6ZatqJW7GV3jmqKpAESRP3CbuN9NyK
	 2dikdcgzn1veNE/Z0xxmpfhGeYyz+jkpsIgC0BQKJdDxUxW4CyXF5vlqFVhQuchKBi
	 t3LGqKfza55Y5OlOfncvbbxpIRtROTC8n0CrMxzXDjLXwdWiHr9ihPnhhAVK0hHJwR
	 5HXyzlFqN+5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE6FD735FF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296415361.28028.13662729422215459990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beefb71868f4c6f4f2b7920d8b8f2c5b9240f9b5a9dcce4aecdedf724ca5d15c
Date: Sat, 30 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732964153
