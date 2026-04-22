Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A68431E82E
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776869854; cv=none; b=P5CuIw/ouJubi1rV42SU0yIpooyo1rZaCWPXOqloC+3gtQpMgk3v7nyeL4cPI2ydhjVDOz+uLA4f44uDu6FPlEgn1+8NXmgddRT3Mo3IA7tUv9c5C1xqSn3DbUAlQt/rcFWqdoaiDESzFgs7+wD5JlQIf2/Sx17X8dDHQDADhXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776869854; c=relaxed/simple;
	bh=ytMIA9v+7pKU4eQ6GyjNpU/bAZmsIjcMY8wmj/tHrZo=;
	h=To:Subject:From:Message-Id:Date; b=lIaRSoTuTodkFNAnTQpykQXX9cttHaLlqVBHp153LlpfHWzbQIf9UO3DYaHkzVk9rL3TH6cG9UuJeDsJS0CWP75in4rK/zNAgSmghdDMZoj3FfR6u/91PUJv3pTJphAgh0QDittmz8w9QLfyAns/h67x88OehpowvxCGTunfyZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovknXzaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovknXzaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE472C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776869853;
	bh=ytMIA9v+7pKU4eQ6GyjNpU/bAZmsIjcMY8wmj/tHrZo=;
	h=To:Subject:From:Date:From;
	b=ovknXzaBktr0mrJRnAmtN5wTEU5q9jN5qXwvDN0GbEiRzZs0Pzw0SrfMRs8VEanYu
	 wOY93l+2nboWGxc95CNVu4x3z3amvm0dMmRVNpiAC8TMjMrPX+BTHNduYcSLgwE4wy
	 kvw2LLuwOvaS1aeNJkCkwmnwB0DDSkPvqJS0ECVwkxnCa3iEsvm8QQsS3UvA9wpMxO
	 C52UEqo+h+bxPmfVHwQW4WdZ5u3YX1TthbDl8aKXnC2ouKHixaj9RPsa4Q3ROrVqB3
	 fyCYPBmIYS33wlGeGBEXhMK+PugTp883zNSpC6dEHGQPVN9PKM92Cauklq3Lz8eieR
	 d2YIDFrzhkcvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFFEF9EDF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686985370.819.3208267223174446358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f25c8b98f687749aa37a9e2fbb7f2f2ac64df3a06de1747700485696959ce5
Date: Wed, 22 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776869853
