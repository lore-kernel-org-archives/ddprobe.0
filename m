Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC4241A8F
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791436234; cv=none; b=tP2oUDwRHQ37YEkxaJ2QjgW0L0hD9vlYnq12fQMysulw9JJXAEN7dhTKT/uvcJnHL02Hb0oBi5Jf7NkSZ8KrwwSzBShw5NkLFqeqy89QjDbls07XbzBvfCFaGZGxK2f4JmjzsUvkVkYi3IjkkHHJoTnuQ2xFO2Ti9jkUO2+rPA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791436234; c=relaxed/simple;
	bh=72WtLO/DSeJVs3LmR704hFmUlPF0zlAu5AFZZqreqVg=;
	h=To:Subject:From:Message-Id:Date; b=JxBobPdEC1QkleUpq+R1QW+zMjcNp7IxGUbBGg+SE7SkKrApBAoAHKkA7naGGWlQtkGSGoJ7MfGihtYslH8DykS0dZBMewbOzLv25Qfa1sRk49IzhK5iN8QpmfCilx6BqdvI+/q6jIgw0kQxs+kd2s/V0pjNT9bRPocffnMiuRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nit/sfyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nit/sfyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB7FC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791436233;
	bh=72WtLO/DSeJVs3LmR704hFmUlPF0zlAu5AFZZqreqVg=;
	h=To:Subject:From:Date:From;
	b=nit/sfyuXth6RudWO4xP2FRQvtL2qmciY7B1r7QDdelJakG8d9oMwDv83StogypxR
	 TANGXYvzeNtuVVvWoy1BRu9rvmprizHGcFYLbKpne0dwXy3fjA1TGDOADBbbv4fpyB
	 PNJivFWgYaps1Gu34bAKcYB07RGcBErNH1iYmAIbVDXLL6kVkBKGbz+F0LsopuyXCQ
	 3kGRxPa6GtsoMV1FUlAPwaOGvQhN6yuP6uxZu+G4ogFKpJguGWiOzw5YR9ksW3BOCK
	 w5J55gfHmyqLDjpyw8IuzwlNZSE0RpnzxKYAayy9/RbmOVQ3hUHEyBS3Bc9AFk5ui8
	 cNXXHL7AJ1yqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AEFCA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143623368.9640.18087264223626973550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda60894d355cadcfa45e5259eb7f7b0dff23c84fb69969b809a2029789dba6f
Date: Thu, 08 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791436233
