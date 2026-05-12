Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4874F49550C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778575234; cv=none; b=H6DTyZ5GYOUH2tAo91XeSUJow850kPM/zFktN4A0EE8VUJQyR85xbUptpzTSIgksV3aOriCEP3tp3FmRUecW0mhXto7NWiDJGlFi862E1Q7fKkHXVsuIUIm+fHZt/n/+Uq6wZIheinpGBVe7qzWaJE6nXXXS+rbjX/tuEYd8Jxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778575234; c=relaxed/simple;
	bh=9X3CnNP8FEn86Sil7gPgbF0YVwJR6CXzO5mc8gHSkGg=;
	h=To:Subject:From:Message-Id:Date; b=sR0MJ95gsacAJMxSUQ8Nuc6ZHz4HS7Q2WRwG28gZ9TREuJgFhJ83jUMO8snNN/dnqfBC5mkEfQycnkyiMWnX4fUZHTDwUgE8iJVZvPG/c8KFpAeL4WA2zVb0KCTvYt5EodLXJaK5+1/Um1vx6VlbMnj1DRUkeJSoHGMm966/iOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoXMfqzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoXMfqzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F59C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778575233;
	bh=9X3CnNP8FEn86Sil7gPgbF0YVwJR6CXzO5mc8gHSkGg=;
	h=To:Subject:From:Date:From;
	b=PoXMfqzXj+veoW/0bR7CYrP1O+vJYtwdTurQQJ/xyL5t9mIx7/9SH5F8cRZkUn6g3
	 LfN3Ih0GjnxubePbJswNGLylkyKl6Rx7jT7AuCSvJvVqn7qSn5xL1pwLh1HT3DgZd6
	 QR7XDs7pIIX/bCpEtAkHr/ek8b2dohednuw+ddTc/7vCv/aH3xOGLTjVsK9sjsf3Dh
	 oMaIdmFzSUhTsLGnUhQvTTHC+ciVnVLtZ7npXohcjtk8E9SH+4wdM0HZ72ZypIXUFE
	 UXNPo87xMxv7j85SwpYwolaU4nXOxcSR7KUbRPvY+JFxYD326HT9159V46NFJh/YMO
	 IL4XaYKkTGRYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE22CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857523369.6708.6077530980885904770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9191d0f286306e458bbb5fb9ad304afd8be733d9a9180ee8310948d24eac5f1d
Date: Tue, 12 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778575233
