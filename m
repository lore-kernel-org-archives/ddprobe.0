Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF4C1D522
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705433297; cv=none; b=bwazEz3sng84Kiq4IXOY8Yoil3MTrmDAZAVeVLKTNusTz6ZJaZoGO4sx3k/y107fQnho6h/kE3/vydYN7rrlu14W3KuzP5L+oT3/CNavViY2Egodncwn3C2AijHwuByjZYH7+2H4K1crjaES7LkhDBIfXsqdM+3/LnvJsSdcVO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705433297; c=relaxed/simple;
	bh=eNMt5+wA72VDdg/XF0zWzqXI1xfazfTPigGY0otVBLY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Wry6+oaFMvs2/XKP0Xe6zDj/N7VHO/1RHs3wQkPpI9VbSBRmHlPSuuhagoHwLOkITI8NR8CdZuIdqgN/dmYsa7EUKXJLCZuaR2g9L8GPYLbxffKleLmFBHQbJk8Pvt8nNdVxwTQm47KWbIT9jdIkCmtifbwi0/9ABTa7US69JJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvS3bacA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvS3bacA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAD1C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705433296;
	bh=eNMt5+wA72VDdg/XF0zWzqXI1xfazfTPigGY0otVBLY=;
	h=To:Subject:From:Date:From;
	b=dvS3bacAzG1tR8mnyr6YyOH8DmENZ68uZ2pEvOmJMofYGb1aQbyOJHD3KJMWzMxUD
	 ZYue7PequkyrPXZURRmAqKaYVi+ASO+bNpZClVNYHhqI2mkV9XAwZxHG7QlWHopKno
	 iGfU/EiBLF9SuLB16gIDRIch/A0oEfWXqR5qnEngBVEWOEFb6pshcdjVhJJpFlGylX
	 ccYtKG7Co5tK2xcL0jMtHn8nMatRn9uef3nmCx32ophO0acHngxii4wSmGEQ82F1iv
	 Bup7cRfZU3YWynFcQqafNrHXoyCZtMXdNpRnkt1jutgGVAj9XSDz03NWYAJPmyRBPA
	 fEAOROVcias0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629BDC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543329639.8600.1469664591658599594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edd1765a551634247633613c67dd293061e92174c09efc4474e5c0259a67ae1
Date: Tue, 16 Jan 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705433296
