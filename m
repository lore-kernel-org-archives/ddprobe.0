Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A0F3254B3
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786874434; cv=none; b=SSrASUTALjnJt/wMeRPBH5rc+eT5C5Q9n3y9PfwRxe7tMVGaj7uzpM5toqj9unudRCVb8cOJbeKOPdrtNI0Gj4h4Bg4TWmhXUAuGKimTft9ZFkgLDwwVZ9ovdQ0CTuLnXyIRSxMHl3/VtYIx7w8tag8T8wII9dFjBJ6W1ycwZDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786874434; c=relaxed/simple;
	bh=52Accb/twzvt0Uj3as0UmQLNiTKEp/p3wMHIxwRwH6c=;
	h=To:Subject:From:Message-Id:Date; b=WT5Rm2U+5loQ3pDGGqn2koVwateKh8IKoGjXsp4g1smIEIQ2SIwQMCHS3JZX18gX3hCEpfaeRW+zf0z9EH6xdpb5+feXpgabnjzZAEw3X25qJGZu1gJOgm6vj+63dQtxqBo3LlZM1jjx0Sw6D8dDJWwE8bFu6+5ZUvcVVj97zB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swLBUi4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swLBUi4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8B3C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786874433;
	bh=52Accb/twzvt0Uj3as0UmQLNiTKEp/p3wMHIxwRwH6c=;
	h=To:Subject:From:Date:From;
	b=swLBUi4jFHvb+SFdXjhJ4/UpPmuhVhjOUqzRzv424BkSI0KT3JEAi8uWUxZU6/D2b
	 UrBxanAZGQ1YRkGlVKUQxTISEuHdC7sI3xRpk24uydi1FbMMIWjNSr4q/ehXHDxBU2
	 Eq2Cedzs6UYH08eOybuDk/zbS4jVXlpiBwB5IXThtwRZAPEv7e++6EgawX6MDp3cUY
	 n3ilgE9yBYGq8iyZO0oHAJqxaOaEDTmqLNxDl32d8GuRRg9AQiaajOI1TKWzQN4NHy
	 8LqPxqbvTdI0WBJF9kkBJb4vhjYtW/LYF8MAKzgQflHO+fm0/PZ83LPubK2LJqhAib
	 LITe90xK7lhxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC862C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687443369.16291.8101115509695934110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e43c9fbe14b6689d90d876234ec0d772aa60550e84cb0f6442dfef79296a92a
Date: Sun, 16 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786874433
