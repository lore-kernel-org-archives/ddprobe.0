Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF1F1B4C33
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717683443; cv=none; b=SZdijly50KP1LynoaKFwIsO7tbs6kKPqlKc6ECwMc8yuuHICJfWYIcDmdbWo6F89VyME8bg9MFIMfpXKsTMFcK9AJaQwiQvOLYr8da5uizsKCYBLo/CL4EUav9Abm9fNuBzIEYRP+Jw/5T7ku8gMU/6s8v02VlBGMFlKoQvObd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717683443; c=relaxed/simple;
	bh=oCtoVzccq+k/RVsdus69zWmw677ia3UUt18shsNPlZE=;
	h=To:Subject:From:Message-Id:Date; b=lW5/yQPkoX1VHbcadl3XOY6s3cchV0dtWNtsZC1ufVc08/jJ8XlCUknk8dwiuXLf5SdRGEXlvqasH8ZwoxkSw8bBKSwjwla3tQ3VmnB4sQVl8DrSmbZQUe5NpmRQpZ+X6Vv52XutDioDVKmXoHWrpl5CyTYgjjM/l9YQlSzUYmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNszralr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNszralr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D76C4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717683442;
	bh=oCtoVzccq+k/RVsdus69zWmw677ia3UUt18shsNPlZE=;
	h=To:Subject:From:Date:From;
	b=uNszralrNn7oC04WuTTTSHqV8HU3arqielRtACrakMTlS2EyqUUKFQkvHtmgHWORe
	 uikc5TEuZnSkcy+Un69rQWF3wLOGDi2cp9u/o0xPeoKQDQhtduzbdFX4PbKuRh15pB
	 wHheUjFIEiPtpRUP8ga4dcaDyEznE/S1LJ3aJpbAMwczup/noDQ6Sic8shKhdWtV+Q
	 Xvpa6kyrtU6FxatNSq1ZeutmQqnEysFwGaPPbDmLKAPkSzPLJ3VxixAFmu4WbiJriT
	 Z9fgzjbEZFDM9kwJSa9QU/9MCdLYd1vwcbQ5eUyOZci4zZTAD5g79+fnu3iKIuRQzg
	 JGad5lsPFBNHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA0CC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768344282.19330.13192083735770737858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412888b45818403367962d7f5cd7d5588c842d563e79d012a091d8319e1bce2a
Date: Thu, 06 Jun 2024 14:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717683442
