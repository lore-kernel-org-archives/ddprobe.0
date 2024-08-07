Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308A913AD3F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723056954; cv=none; b=YTeN7yV5j9vblTn6hQyRbu5j6xCPwf0AOS/E0+2A/3ITBmBwjCp2ZXZdLCAzEfMf2EfZbdvtpAyd8VSAkOm0MLDJT8ZzczUsk/j+aGW83iTHksFr2hf+Vo/o8mmv/7NlG9w3U/IWhmS1RXxSSno8O0lFYtXo7dl831eSSYTymf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723056954; c=relaxed/simple;
	bh=UrBjhMsN+b1Kg4yflHAvCK8VBy2AJLPfvcf7WhL3riw=;
	h=To:Subject:From:Message-Id:Date; b=rAGZIniEIy8P/V5VF3EUq1Qj7crr83XRbnS94+9e6olT3zc/QVrvxdXvl59GM1E2HDZJNTEoFQBJo9Y/j6DwHR0XDbqdoasbl8NJXuxGoWt/sYwD6FKNe360ID86bEc/NgcPcJbvJ8vrNRyR4nQYfu0rjuqTOlb0z71jdiV5W1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N30W/gkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N30W/gkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C88C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723056953;
	bh=UrBjhMsN+b1Kg4yflHAvCK8VBy2AJLPfvcf7WhL3riw=;
	h=To:Subject:From:Date:From;
	b=N30W/gkX22wCIkDAbF22+G5aaqs1I0X308H+YIQTZcyvMgwPdkrnHPKqNsLCTBGAH
	 KCySNlhnF6UZj6OKuqt1bGrBDy8jefyUShJRAKrcrmwd+LqaIlJYAosugSAn78bNN+
	 XeqfSAeeogiSXSZNApOrSS6a9VaxZn8rQfSxBd7L6z8/pOXqeLpJx57V54OBardfM8
	 p7mgcinRZrJNw/cOnyDKIYTNa+EB4Ju89GBUJGTCqXKYxUaw5nKXZ734Tu02kUZA8D
	 sw9k5S/GbkcyD/nB2Aca7QyqMVKEJlpvPmHyxTzAyWJR0VZaliVAgCW6jvNC48LkSv
	 AQp9/CcAgtfiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A720CC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172305695367.8388.12060305046446550115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20d981c84cc7ece12b25736bd92fe6e0841d7586b4fecb335878e5f64edc5ab
Date: Wed, 07 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723056953
