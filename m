Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BEE134AC
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754360394; cv=none; b=K/kqXNiHSX+BfqU2bvCImB6sLG3n70ecDqUhteTUpw9NHb0ZxBrmOsrsAdUIcsacXrruJ/4Ig4ItccCHTCzcp/0w9hhn5TV5wQKs/gAGFyqKE/87J7PDfdIWrOzMLthUxqcLAi1ok20Qg0VqXD6hETIU+eDY4j8Tk3ESQfL+Mpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754360394; c=relaxed/simple;
	bh=UZA9cX/oy534QFxnPpoqdVgsdOHoxTprzj78TGiOGjE=;
	h=To:Subject:From:Message-Id:Date; b=ge3HsT6OTa7QbUES6IZab3Uppe3SSrgwbmy1vy0NTsSLQCLu1tJc2reoqyPx0M513bGcffc5CZzVIb5vjmp9PwrFrcT/QOcu5i1jj5aBWecJeoLZ3RX/x6O7TLLSUplOyRDOvGevJHx81z6i/Md1kXDzaAqD9vQbahmnKxyrJ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAvJML2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAvJML2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96FFC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754360393;
	bh=UZA9cX/oy534QFxnPpoqdVgsdOHoxTprzj78TGiOGjE=;
	h=To:Subject:From:Date:From;
	b=MAvJML2T9kjXezjEPuZM+VJ+h/pvgesAVQpnJGocXil3QFrmLtuz+enqmbfK6vmem
	 FsJDwH0RAPM8A2TEhDQhiw0BVd0VVVpihVMQ2w3qrfe7A85TBpgmgwBDPMWY+2ODn9
	 P5FBo8c7b3IQeWK+29QvHMGfAACvmo7D7ARSlJTXf6B7YUJ2j/rxGkz8KQJvekSyvV
	 V/dik1ML9TMsTymlj7o115FAGAVbRQcgnHiAViUOYE1RjxlCar8RZj0JGy3DXR5jqU
	 g9QJgJsqRMJvDCJmLj3Jj7aMOqSbkmn78AVKBq+eVFG4Mg0sBosWtDDqRF+dh1gS6J
	 HGaXHWOiXvZEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96199C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436039358.22283.3247533618866941227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f7f6b02f54e1a0fafc6cbec2912830ee6567e6ee10e2c505df3ac7f1e492c8
Date: Tue, 05 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754360393
