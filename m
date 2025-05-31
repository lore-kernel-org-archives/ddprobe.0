Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46284237163
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748693395; cv=none; b=DEVuOhCdvoT8ZBt+e2hTIs3Db5iG5w4DK+sEkjKR8V3mIlNwdttNILDHBbNW8Sg7LM8qxpbw61Je8o5BlJFX9VF5GEeT7oi97pUZS4Z5fItn9I1y2GeEOvcT76o0sa136iHC8qnciOvh7ZrigoP9uPzUI6/JmZ4+1G962fDGXK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748693395; c=relaxed/simple;
	bh=gf0/cWn1YPuWVzY0/8B/eHSsrnWdzR8ds8qx3Ajei0E=;
	h=To:Subject:From:Message-Id:Date; b=GHmq+Y/4clvorZJDp/othFI9iUnFj2CTNV7q+ctbOEkNDO3mpCMPD9VEdJ6xwcApZ8MX9jl0qUdH38CM0diTotzIMsRMZPnm8GPM1JhTQlycYOdmwskOWZ7ac2joZFfEzPcSaetACTfGMmUoEvPexuaLGJrPgrLA8SpfmTGId8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9+srHeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9+srHeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D6BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748693393;
	bh=gf0/cWn1YPuWVzY0/8B/eHSsrnWdzR8ds8qx3Ajei0E=;
	h=To:Subject:From:Date:From;
	b=d9+srHeZH9I1lhl4IFWC6Ak06VDjyFpwzDXQi+cGAbKyo/Bsb3d6dEMrac+qmG7Zi
	 LclHEiYOjg4x4cwErcdtgNuEu8Z5m5+ZtknmtRpNCAdVkQYuTXyIYgw9BzHFMNwmeA
	 xtZVF5wlKiLui79lzCecZU0o5ijOobXRSsQEeed7tUKmsGzd2sdtR0mT0PAfy1P6VB
	 UStOQCkuKTr3kdySCbq/9W5EEjdIHWqoTlmvg3So8IEUn+n3Zyp4YltQRTYHXgLBnd
	 75ZnJARyPUGp+2tjAb+oSoMffaBV3lKejHpxO2LAZzJZhw/0r5gi62fmmXHUc0wPxM
	 IcPXwTYb7SVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95360C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869339358.18840.12952186439972679503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd76a549551a27fc87920892ea57640db0694cc397237ea023925ba1969fd471
Date: Sat, 31 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748693393
