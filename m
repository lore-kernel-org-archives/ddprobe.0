Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26991157E99
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755563996; cv=none; b=geD38g1BUD1aUTEnJ3oA/1muexm8UCwkkL/Vhv2XeKCzErD3FrzS7iO1rymJnHsKW5tnrOvHrP1VhVSC9j+WqdJT8Cq0kqRHPYQnwiirbzVvjmdvotm+SzsdqG4ljS6zRAWlz0vDaJ8263HkdG2nsdhzaLV51mdzipylyat2JKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755563996; c=relaxed/simple;
	bh=U/2xjcUQC45CdpB84SyK0p/8T/+GPW+xAjRmtT4T6x0=;
	h=To:Subject:From:Message-Id:Date; b=FYxWleI9k+0UlaMCd6CSQkjtQXt86JNnGBnYs6xIYTfzwgYJoNG+OsNR2zKBqjH6/08FWRbteK+CugAyItfH5rxiOttJBEFkEeLztf19vGUE4IRkAR5metHuGZg0qH39J7K0NBCtgNykG4CppFBxV5ewURKrR5ygsYZpbabCBDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deQUoumN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deQUoumN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3717C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755563993;
	bh=U/2xjcUQC45CdpB84SyK0p/8T/+GPW+xAjRmtT4T6x0=;
	h=To:Subject:From:Date:From;
	b=deQUoumNi+sWFkbSbPccdjmO7TyF33RXX4bZRmvIGiTx8rm+rUKoygzo9yapaHN62
	 mNYUXve4F14CyNHfCORfqZf3i7GPHev8zYaDkqcStrZWEESx9COGU78BNXFUH5SlwP
	 hJDY6Wy+CO8nujfYMv+O+Ws6K3D6MBwO9T9sEOCJ9Egl0XE4vK+KyZnAFuzeY6bRyQ
	 7wIJSJaTHt/6CIpaPUi4iaFW/G0T/9vLcfYekUeiLSx6DND+TXjpPkk4XEXY1LJG9T
	 KzSjrmNEoU4rHDTFkrjMXU0neYD0OReybSGCnZejXFSE4mAUhHTj0DGa81Mi3Vm7k9
	 oBgKrufoNtz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9506BCA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556399357.2169.18105391525943931650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1d850b1d262f9210a0b518c683054078be195bd473341026208de278d219bc
Date: Tue, 19 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755563993
