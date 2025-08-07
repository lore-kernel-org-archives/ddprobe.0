Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268A321B9C0
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754561994; cv=none; b=Ag8iIAnlZx3UlTLQck0GtUmB90XFXx4HNU8x+dclwIEKLASTRCXBYG41xRzy3JhQXzEWKCGg6ar0dkYqUMN3axEF/8s6W6Vo/mv3SD53/WSFDmylad6juGFzvUat6Bp0o6HlLS6gEpdWGxP0+una62s50Gs2ZRBAs5HCbrAs4eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754561994; c=relaxed/simple;
	bh=wrwkwJSDmFHkX+wtb8F8e5Nr9Bd/BJVpU+G6LKVX9j0=;
	h=To:Subject:From:Message-Id:Date; b=PVLHR0RHX4PBh5aGPgmTP9JYxvu4TfPHM0DGc1DZHLZRK8uFnwEd9ckpCk2s52uvaFR7Vh/o35s+qsxVN9+C2wmi42GXGspiNdGTW6xfGBftezpClNkaqgPQgtjD3yLZn28tnj6XxleBam96timfmxnQzlw1Ykp8IcqyTcvWdX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdy6BSuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdy6BSuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36DDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754561993;
	bh=wrwkwJSDmFHkX+wtb8F8e5Nr9Bd/BJVpU+G6LKVX9j0=;
	h=To:Subject:From:Date:From;
	b=hdy6BSuV9WAQwsip80c51OEshIBdMZfZnF1U5H+4X0cvEHU6L2fYv8741p6PyavGZ
	 8e8T/lNukyaUtAYKI26Cb7ils5L6Mwvqx+dt81C2UEXaxEIEuaE0+QsccJKbM5ltgm
	 JymEahruUe5qdBv/9uV9YvN1GeOTw6SGrdWhHi+uaHGoR61PKyBZwPSZjOojTht8Qy
	 f6u0Uu9x0kNOp+YM9/IDY3/HZhx5lMGQcPlXqcmY6Pyk8DyMpAQh7yWRfN9wjrv6VV
	 rc9/s83RicoQURnUQEUNMPfKrjyTzb9tCJtd01MES+HtQd9dXrhHdmhFi9GVV/n1k0
	 +r/qLXYmpF0NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D4C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456199357.28579.5327297772698840583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af2fd8042d8a3aae9d49a6fff299cd93418150720e3dbe21daad67ed182b9ae
Date: Thu, 07 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754561993
