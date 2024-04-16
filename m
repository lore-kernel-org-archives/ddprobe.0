Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E942907
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713260363; cv=none; b=MtywD/SrOoEpybq73krzahWoNaOkBRyfCxtRvW5EgOhaTrcyFbMce4joRTf0HlRIQg2XlzXesAB41A9cHYFZZcyHbmHCXwv4YAOd6C1M9HaWIYFNAJEKHU8x2OpeKmSSvFHw2z9HpBwbudYonDDzBAgYS3hBv4+VXnI3UtLBPr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713260363; c=relaxed/simple;
	bh=KJjPC/uc647BrMke9UXWZQGSylvuRg+XI7vA3Hg223c=;
	h=To:Subject:From:Message-Id:Date; b=oxyi7CS1bEOwn+8iZbz/g2srbUrIjUetbwllUSdlEVrSBe5/F0UvvLs+kICDqyEslX6uBFoeSvUVNOdFhdYex4tCXflBrEHmh6HEcgBgPKUOpel56ivI9JfhGpjhyogqV4SRKJm1yIA4ehfKa20WhGK7KB0Wrf/+r6iIePbzs1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWBL4Col; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWBL4Col"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44D5C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713260362;
	bh=KJjPC/uc647BrMke9UXWZQGSylvuRg+XI7vA3Hg223c=;
	h=To:Subject:From:Date:From;
	b=ZWBL4ColDwUW6x3VAYAjU8Dh4ZUuov/aE3/ihSQIHAlRUcDxV8tTHqNzYxc3aji0r
	 QzCHTPl2lHpbHLj0tSjeG8GCCvRNKxOpnAjEcLu8ZA8vwl1ChSL6YyY7Q/lk8VqhXR
	 UXUW2a5tkIZG/S0Kb7cI898MrpZlS50ZLLbjVNynwpVcGfdMIiSJQjOSyOUfk5/7Y2
	 Q2EdoIGR74jBEF8pbaNdFq3n4yu0vUYdu+JLDjatfUlMdLRB92EhdJTnsajfF+Nb8m
	 rXVWA313Zo3HkKTZVZ2Loeiw+v0HRptLlUaS6kai8r1za2zrEYRyrF674N6uEwoM3V
	 2/0eWUcu4PiDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF514C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326036277.6826.10297664667530641662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acf5ba08a8c33c842fb27650131b9de5b2200931a53571dcc7b2dad05a86bfe
Date: Tue, 16 Apr 2024 09:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713260362
