Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A1B3D6CAF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245094; cv=none; b=EPPTgn9kIkmxRe79lbDaIzUnhH5OzPx9QkAH6WyuEOV1CB+gsIS779RtbwT/+CslFKsR1pDKDjOAmcoCPlUPYoQK2NE9Jvptyu5NGfupxlTb1rtHOk5q6lRECNxQFN6K+sxCqH3hfRUVSALgTPMfDZzcpm3awM5V2bhmdEHZrj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245094; c=relaxed/simple;
	bh=kq1ZlEnrYBY6NcJNuz7StqwcS1wPeozIKMUR4tqoKpM=;
	h=To:Subject:From:Message-Id:Date; b=Gg39eVhPtZ3dQi0YZWSSqM3ejAB0Tt3eKVU+TEyViDQRngVTPZwnjo2q6tF4IKbqJDhlfazFkXHq3BMWZ65qvcZleYSsRuVOSkda+nTI163N1CtpYuVugfN5BA1rKiUmhkNBaimqGj0Hl547YO2XVdIexea4xc9+yapv4Q4/eoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+iLkWVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+iLkWVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773245093;
	bh=kq1ZlEnrYBY6NcJNuz7StqwcS1wPeozIKMUR4tqoKpM=;
	h=To:Subject:From:Date:From;
	b=H+iLkWVAmDXjLNNKsbz5iAkIR5m3C1eSpMTVKu681yjaodUeqtM7QcTITjXCcDwAR
	 o5MrWAoAlof32doIjzUBHmOu5UWpt2haQ0cgE1jFzSmYHirjFVyPK6FciS90dB3QFe
	 sJ0D1RCo5LHN9kpsHnFFRbcF+9i6Ife26hy0uB153UMnrXREcaq8cB8tTUmOlI5doW
	 5ummySHNzRBcRmdu7A8ZlKdGOVle+NBb8aJ251ZIPTyCv5Eykr93maIiy8i1swnV4g
	 bbnjz7xxw2l4PSPnvQqZ5tko2xVBiqefPnQapFUNVLflXykWqHX3PtCH7SL9UDwfWL
	 klz9gBAz9EkGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C01125850
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324509360.27335.15861530009926457308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea39b6a5f81e2d0b8d4fc5af0f393c178012fc742178cf84a9f4e9cfb1b59440
Date: Wed, 11 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773245093
