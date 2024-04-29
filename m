Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDBC1E886
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714432343; cv=none; b=NRbuRIn5BWagWDxD1wUMHTMMr38TYeGMyqkzfdgHIQdg2QWGxflBasFsKIzzHMPvclLT7YrXJXjsWt/T+LP6s2jvw5Hw1G7Bniq4tUkWIRjKlzWOMh6Mm2TTqbs73/6+OtW20iZN8mkZMfwtb0tQ4+QbNehnCQHcf8X4KLxKEm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714432343; c=relaxed/simple;
	bh=OkQf9tP6AOjTtsmddneHio6+1YUSEmu+TaZrBMNaH7E=;
	h=To:Subject:From:Message-Id:Date; b=b9wDJ88kKPv10lbTcA7bVWmOnCJ3z66uP2qCqS3oTY1sEh+MBQo7D0N2sm0I1sSASV9NDWu+cKldkrov5EiTA2eXtPdoL+d0BRKeqKZG3a3O8b4M+d6D/+JXbOKIN4otPFTQXE3WMBPh+54FYkFKLFaOgUNeE3HU8uLa0HEPlFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuzehucV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuzehucV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B7FC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714432342;
	bh=OkQf9tP6AOjTtsmddneHio6+1YUSEmu+TaZrBMNaH7E=;
	h=To:Subject:From:Date:From;
	b=PuzehucV2ULP2r2ivuACpGMAYIYkGmuVY+UrSwnyYjymd8HZeoy8cxphu+z3Rjksk
	 OF9KHdm2m7byg2H08+F2QubBtm7vHX/zW/+qp1xvzZvDOo0ZFOC6wju1zHSUNoqrWj
	 W9mEAfGkWSS2rHMezNTEYgKgclcHQDCTbPwgrxsI95XT/iWUyT7qW+wsf4SIUmvudD
	 cP9Y3Rs3gHvCOrReUa3b+KLPf2+d7zfb74vtGwY/GzbNdO0inupdwH8F4715TwGW5A
	 h/Mr5mSCtaEz8Uil9PNyUqGzfvlrofS6k6xfwAJlM5ViiRhAOUM2F15MPKnXbmkM+I
	 uJ5ci8WNafzIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09DBC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171443234278.18130.16125349278947375637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de449205a20cb8b1e87628125336a12b91ccdcbce04afb6fddea3d4a7afa68e0
Date: Mon, 29 Apr 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714432342
