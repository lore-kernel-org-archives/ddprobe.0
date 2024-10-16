Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F331FCC63
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729067754; cv=none; b=cTVGJorzNZ1JVz07otW4jNtVYLvu3UrIA/mlgnp5cLtfL7ndLXpBx2ehuQaecpiNAkWlBXnv+RSNlMKkL+vm18WJHqUHQE7Wcsdu8abktsCDIY1X12nPyHZ4dM3VeHZAU7IrsMCcweIwx6VifbBXWp0jTvOJUJCbp0fGrOFKz3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729067754; c=relaxed/simple;
	bh=1x3xnoj+wnV+j0wyvYAuyHTJDfX4gyet3ahNnkdjwWk=;
	h=To:Subject:From:Message-Id:Date; b=OlwPO6/dxkECVChmEY01oN9kM4TvZoQeQQdEfx9+LArz450SQhMrxXO1a3uWwoR3mn/tXsYK+v7yx8EC5lTpc2xAdCWqNKS9yHrmRfz3KIkQsyaJWsvg9vRjgicHokNxAhgpE4AmQ3qxYE9VdnpDZEuYxTxjTS0eK0qhJSy8WlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euS3JTUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euS3JTUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A706DC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729067753;
	bh=1x3xnoj+wnV+j0wyvYAuyHTJDfX4gyet3ahNnkdjwWk=;
	h=To:Subject:From:Date:From;
	b=euS3JTUmqqIpWWqSxUYixR3Qn9UqGtIzHNTbOckrFU4es8QeC3o1oCvZTsrVS++eR
	 JOE1UJ3LA8wJZ1sNQ+nvHrEC4tUPaDsZQF1tW83VV9y/y5NqdpLAXj0VIgcZe2giuV
	 mL7GxagBIQHBUViwg9XYQMRPDbcfX7lgkwoo8Lamn8ExVvuFdmKLMJZ+kpSbda1f91
	 cS1SoSEHYIaiIS4mOOW4AVXtEIYS7trVDD8C2W47pyLVH49Cjipk97yvCNT4mOVJiF
	 jAjI6OynzsUK2/aqihq0llD0r4TKO2oCkcKSBlpyWP1UsJCkzIXjST9zpKRLv3TlJV
	 ARhmiBXV5DfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D64D1AD2C
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172906775359.22226.10663995119217010692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb0b74ea240bfba2dfa98a950464ad30a0ea0a69c699939b268cf182f49ebca
Date: Wed, 16 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729067753
