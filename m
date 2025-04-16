Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423B9204F8A
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744820394; cv=none; b=Exd41JeWV0VCSB721ykuIPNp+Gw10+ZLXwkAIidmpyHi9pd9zta4pkm8adhTIgPovuWGaSt17JaL6KHjrnREQZsMyOCAyP1O1cvlnMR36//Qr+hxTQexDMl7cMfUO7WOHmIAMb5KC2AH8HEGP4Yq46LNJbr47i1tJzdifiDyNT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744820394; c=relaxed/simple;
	bh=PbbgPEWPQaH78L09rySniaQ0ehEWSyKcd0/POb3rXhA=;
	h=To:Subject:From:Message-Id:Date; b=Q0uqskSKqqZUM7cQd+p68RJJXPH8WSA7xNTSn3b6JSnYU7phzji5WX1c9c1EBs4gKKTOBX1S1z6FhgBSNDbA6bmZ5TSxYo57O7G3Uq9jYW/QOmdQV7wMxnKv9CufsUFX1KKz+v5cOfdIUjuT8uX1GlLKNyXJfLVoQzwp2eH6ykg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+X/IlCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+X/IlCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B9CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744820393;
	bh=PbbgPEWPQaH78L09rySniaQ0ehEWSyKcd0/POb3rXhA=;
	h=To:Subject:From:Date:From;
	b=g+X/IlCIaSw3WU+IsZw8kSGmDyKf9NQvxVcX70U3gOh5birZSGUmheCRyk2DsICz5
	 +fJAPINiakJgBwZ+1elZ6xrwBonZ4YGvPl6hwmF5aT/ZUD/ZVZC6HeQcP6HMNR7hOQ
	 RbsyX04AODgQ8xtqEptY9pkg1C9FRYi0vYgXnUC8ADMuud+Nwjqz3VOts0YGRTUXq1
	 3KIo7sCoTf8aRXX2h7pJZe4o/aQHm2ENR2xhuOpSolQaoyNyDDjM1kzH+I0hV5VSps
	 CzBajO2IQjvVo8uH2ok8dVbIU7NMoquaHEYfp1PJGEf3INmwD/yorHNYtOQTuqaUJP
	 BD3eRRzT4lN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96623C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482039360.18900.7738594716186441649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964e1478ce7606740d1a61793bdf55dec5e90b1b4a01e2dfe99bd57be1e11d7f
Date: Wed, 16 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744820393
