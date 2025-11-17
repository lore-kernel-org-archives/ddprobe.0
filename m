Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDB825BEE7
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763372514; cv=none; b=Sr/1D4HyiWp/4CA87SJs2tbDY/ugI+QTJObIl2riCXFO2kCiP4dak6S6xg8Vjd6zMsBsJFckkVvZtIo2Ihk/2+lIWIoHcj5nrjgRxEf2ZvT6BETtFFn67k7Q/cGYcz8bJ+UkKJAcniynWBLeAE38sw9sH1qDgbQQxSR2mC/qSrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763372514; c=relaxed/simple;
	bh=YODy58pexYGWUd7aqi9PFJOeyPGyfpAA/9SoGd33NEc=;
	h=To:Subject:From:Message-Id:Date; b=s22TTePQvkEdmZHpQCpID35ielePj8kT+LCorCKhyeWnU10IGhyKvpiGdgiy01QejrKp/axLfPUtKFgq3QAdlmjybea9hsW7xG0uoAmlB1SMKpYnmIJklkX3nXd8Za44TsnoXjtDX4KSsLm/o9o6ucYzt5yhZSpHl58S8R+HDAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHMFF39g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHMFF39g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFBAC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763372513;
	bh=YODy58pexYGWUd7aqi9PFJOeyPGyfpAA/9SoGd33NEc=;
	h=To:Subject:From:Date:From;
	b=iHMFF39grBV9gaIpD5jcwV2aw5XUk1P7zeSR2VepCX5/JEh0R5zGky0u7fCP5p4SR
	 kRvLTP17aYr79rfivb8Pb+PnmEmibj0T7uQTE0GJezbndTIw/0tFeu1zF0nrrfRLee
	 FgfYD5msVmmwAs4a5YmnFDMeJ4amVBa7BKHhU76cn/WVYlakEPx8AOCiRiHdozIsbW
	 ESaFx+F2PJJ+Fx2o8g2lgm0wNPkjsKgtOPPkglyE4y5yyuaxPAM3xTTrq9NzIZzJsw
	 DXJMG37xByaNmhylSpNcxpKqH6Awuu8MgQR24YcwN7+IPLFjs+xqGSceO7zsSUZwpk
	 uEQtkBYXRzTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98914CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337251361.4589.9655293817703162419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94111c366d0822199c581513b2b3afe64a8ae0608250309b277ce0c926e0552c
Date: Mon, 17 Nov 2025 09:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763372513
