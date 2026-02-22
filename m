Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A46254652
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771725294; cv=none; b=rjH+waldnj/X82P44iLg+oNqOi702BGMYy15EoEO5gWqV+qEPF/rE/19y99s7cVn4I8vhLrzMjYcP9mDXvJAJdj11Us7DlwCMMpOh/S5PEZF/tnhk1aNKTAdLov21y1uovDA/jyPRW/DGo7/zACStYCyMtu2jxitWT5+TcMCYuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771725294; c=relaxed/simple;
	bh=Okxrhfv+71WIERs3bV2MQ4ESpb2A6XDnstR6j28TTKc=;
	h=To:Subject:From:Message-Id:Date; b=T38Ogo+YEZer1pYdun5DWJxu1hUBkRGR8WnfarSdtQCY6mrAlCzGV3gfdoJ4ZhCikSXJUCka6qIB1QPbBZDCnLEQChfS4hM8fn97IZlOzTo/YVnyFCe+vDgfvsSEAmm3FKAO6kJVj2R2TDB2uTXYo4QQlzqXQwm5/bop6qHstDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZTMfTeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZTMfTeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6349C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771725293;
	bh=Okxrhfv+71WIERs3bV2MQ4ESpb2A6XDnstR6j28TTKc=;
	h=To:Subject:From:Date:From;
	b=nZTMfTeO7qc9iGVC1rPEAdawMaoJDM4hGX2SkpX25wiAMYTudC7lDU2geOoldS+ht
	 aAL64uh2IlGblxw9UGZE1EyILAT5frISixZIGZVWYmjBInjb0Oa8p5UMBehmSN9LWk
	 dsX0n5DFJZNgfbD8GDEpAUYXILGvazmn4/1olirffutcfzjxXVFx9X8ibPyDUB8FSH
	 bmGNxGmxUcnDp6rB3rEWID5wB7r1Dx/7snCdE6V8xYDhwA4xJQ18y3J/tpkKHMY6uo
	 o5AIUwz68WIJp5bfmjxYGPNQUGeBjeWD0dg7pZYKmGELidR5rZQcPvxbSVm5C40Nr7
	 b6NABwl8ryIlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473BC624A4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172529358.19580.12255674827461395013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65571db907d3e2906434f7ff49cf782bfe9a0c19d9330963753762158726d725
Date: Sun, 22 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771725293
