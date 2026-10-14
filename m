Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271E541C2F2
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791971434; cv=none; b=VtRNUiucLoCdBPXuKakMOxPpmcyTClCV/x2C5208hiVlbTqW7ZjQVShJ8jliqfnNkIqBXGrDRAqyPxZbF6GQitmrDG0m9UMhONNThsEb4cHU7UXgVGW9eQm/d7L1QBvitVtNPrRWzt//bdvZkchpqyESqC56LETc9m/z6YyZgtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791971434; c=relaxed/simple;
	bh=Ny+x7VvMkiLdXqgRBHxsVqRw3q7l0h/y4zJ4an27FIc=;
	h=To:Subject:From:Message-Id:Date; b=fxgXIGWMLuOErBsWPP5atlio6E+IwVLsEPkicHc95/01bF8X4Ny6fhGnB9i2UVbvu+8MiX84UsWrJFkLWEkTznZ0f8k87jY7cKcGK5S+CbttST0Ds9yFj1MwEPXOL2uvD57FvWUe3gB5iOxh4tvqFoABRJrMshLsxfRNg6G078k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+uWtOZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+uWtOZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE825C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791971433;
	bh=Ny+x7VvMkiLdXqgRBHxsVqRw3q7l0h/y4zJ4an27FIc=;
	h=To:Subject:From:Date:From;
	b=X+uWtOZkACb/zJIs7QAB56oW+eISI7suuShgKvhAWA0y8cmq10/FqYCBoLHCCzDe9
	 TDTZt/xwHrwq9w5M2ddgHHN6bF9sphiyRxv6L9ypwGzd9PzSMtRS+AxmZGhw6rFoiy
	 Mt6xmpZYn2EoYN8KWKwNPWdc6tP2hp+ZEPUtQXONiVwpBC/gTeQx0Dz0Rtp9oejHLX
	 zb9iGPlPY+XQr0V56rHVELTyq/q1oUEhkEpougSycD5tQFyHi5Xi0QMwltoTIVq27/
	 g8+q0I3gDk1BDi7VotELf4D+lviEjpvaI9+APLp93yIdCzNqaRueQ+WkfyBehpatsv
	 Syatq8TcuiRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA843CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197143368.28185.17323658640796526617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f1d853cb9f37686677d46612429c095ec4b03704848a3fa2eb19f705f805b0
Date: Wed, 14 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791971433
