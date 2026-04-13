Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9713B3C18
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776092254; cv=none; b=CzvlabpURMUpxBkge1FOayiHNwJpAuHrKm276ub9u+Dq0otlSBYhlhUf8jE5kAM6HHtq50xyi0Rd/41qfgO9vYPoGztUAsfjuvKEW0uyhqKJvNhEiLRkxBh2gYFJIQ97Z/j0ktLw10NGPzPrEMFZohVfdsIGzzdlnSj2OGd8XD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776092254; c=relaxed/simple;
	bh=jHT/5GppKtGkq29kkp+XGAPUdt/zMGw6Ibp/9QUYIbo=;
	h=To:Subject:From:Message-Id:Date; b=OwRX6NmMjC/KO84gS/dzr0sjnoB1w+vPoiBTqh+rXX8oBWfvr+UUxJ4DbkLvxDXj6akpjFImFM6uVn0QdYMCsrKCGiAVsMOZKL4DOXc57p3a8tXKSwSWnYmXw7cduFlw5cg/WjXhn/XnNRj2UXEdYL2GLqBMNtZ+VLyQ1L8YnGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn/nzXO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn/nzXO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA002C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776092253;
	bh=jHT/5GppKtGkq29kkp+XGAPUdt/zMGw6Ibp/9QUYIbo=;
	h=To:Subject:From:Date:From;
	b=Pn/nzXO83bjmYKQ4JvJy49TqvtVAFYYBIR+Isk3cMYZh5UPEU6HdJEGG0VJCo32B0
	 aA9sqiBs6b0rOEfD2fl0QB+m0jm2f0XojgdeMArS4fB889vEoqyHJqFlrEwugfrtzf
	 aejioLTt33eLshi95iMEraazeV2oHJdOZ433VYFjYQdd2F5AnuDnit5sE64eJVem5p
	 +0n1Z4xa9fAyUnaKlIN83FHCHHfxSJGcZKviWBu/mnAKA4ozqjXh/qqJo9ElUkKSWg
	 tDCvVYAxzBgtbKKBA3xT1WBq6B635O6ma328Edl1rhR8g2pRmjW0+A4hko7SS8GiJX
	 2bxRU+sPQRyfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC0FF34C5F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609225368.26427.14145147962915428533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb8fbb8b02f3f47cac0b5f333960604e9202ecf270f897fcbeb5db7c51b5115
Date: Mon, 13 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776092253
