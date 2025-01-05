Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319D51F931
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736069754; cv=none; b=cwyLS+LmREQlV8n+kVzm965J/AUwcxXblUdBHjMg46IfI1r0fwdyblXRmZAl4tLckYcRXm1YoJe4UM4etNfQ6SRq9NniddCDyN/QAQyUYXP88FBnmY4oK5HlP0ivqOG6cz8bW8/eCnmLgAQ3euA86gzHqfLEOA0KsXq1UNDwSGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736069754; c=relaxed/simple;
	bh=60oyfS5Rh410KGehZJyz2BuJ3gItVYDSw9xd08A9roU=;
	h=To:Subject:From:Message-Id:Date; b=gJhxvcGhFqboN1KQ4yG6RVL9mdMnMg5g5QiECqD/qCYmF/uuGZ+xLor7z+bK7+zdfLo27JnxlrxiNF8EHi3vir5DanVrZi7zOlm9SO7F4/9ZFZN8X56rHnB4D5Ufm+tBpjPn0+gzoxSb/SwcpmYJcnmR1Jjs9nUAnRpZDRM6e1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG9jCZ+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG9jCZ+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF965C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736069753;
	bh=60oyfS5Rh410KGehZJyz2BuJ3gItVYDSw9xd08A9roU=;
	h=To:Subject:From:Date:From;
	b=AG9jCZ+DckeXJkqWtlG0gYrms+jBzFNp2/gl/aoHIOBFSnntF1kw7qG7DV3SmRNAc
	 9RVtZomWhltMzQnviFeW7bxh0nzFVm1xRn7eUnTyOVUbeAVgUllRmxUad4UsvrmKUj
	 BYXxpNBF5LWgz7YKokoCGUqU4UzouxfK+LhGBgvaTIg4304witGqttBiDmIniCYsxw
	 fRzUcBFwoF0i0zKu2qgD5FcbpoSFxlgF+0lL4HmlnITwd4LyffIhvDtujUST7GvpXI
	 Igjc+JoKHCapiAbgispavPyR8XGZuoi+oze4sycK8rQFRjO1aUQp20r8XlNLP7kvKt
	 UV11DkK+oyVMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108FE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606975358.11279.12663438634278024264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4a9c5520b4707e338be8aefbe0c20c38da0593aece2a7ac524c6ad06e8422b
Date: Sun, 05 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736069753
