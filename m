Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CEF1C9B97
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735892154; cv=none; b=qRDzA2eZNkrjaMfYsOyrrct1eVKlgtlOPxtPDIUahm6cSBoKMNTXJaLvmp+jhxBoxNOhEtCzFiNAKIH5EG4SbCV7iyZ61hl+kl3mipZClCkwwp4IDSsMldIoNiUeGMRFQeaEqFTuYqLUWNZ+C5ITf54CLQVuzfCQS+/LlPOLeng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735892154; c=relaxed/simple;
	bh=EqRCsskUy0pH2MIeG/TsH9mwjl9C+1AJvFdeZ+bLWhk=;
	h=To:Subject:From:Message-Id:Date; b=WZPZ8vfdP/GTUIRnKM0x9H9BHQ0xiAVuHLGhzdn0gvO/+kqjqJH7mxyyfA8kAaPlC7hROiJ3Fcu3gngBF8XY6dOakfFpxYjUeha+MkTW2O5moLqrFg+erMqXn/cLFpSagNETjz6vcGfo9TGBLTqzlEWzZeiube7Z1mCczVnD52E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUVJCTaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUVJCTaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ECFC4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735892153;
	bh=EqRCsskUy0pH2MIeG/TsH9mwjl9C+1AJvFdeZ+bLWhk=;
	h=To:Subject:From:Date:From;
	b=TUVJCTaUceQgVnE0DPZv7Yo0LJo6bJadJuYvz+q4C0u/5Sya+DkDAHmlS5RiMjYK5
	 XDPnqHIx52hMNGijJnTHlZTpWjrSwfwhTnCXDbE4G9aBloH/05v63yzg/+Bfkq9hA+
	 HERLozbNYoEdC/58+DJLxUt1bIETIg/Fvc0mrQIJTJ4X31LLTyJXxxVQP/cTdr9vyp
	 7Q3OulNO4Y2/tEzr/5haH0QvGaW1h5hK7r10YJ1QRvK4Q4lXvx8V2Zjf0kZg956mjv
	 n0LwIfICF1N/y1JjrPoazs5ajRXo+2ud374LmW253855LZdjhD1i/ZqAcbplCbIqwB
	 BgvYlY9lyYOqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94358E77198
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589215359.11779.9910236905253967236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e098754cc834ce070745b6cbad7ba62bb3abe6886496e64a522d2ffa3d5955
Date: Fri, 03 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735892153
