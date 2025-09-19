Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD9F23E32B
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758325795; cv=none; b=JwOFcnwmGyauGljjHujM4OzsMZWG77H8UuIQ6/fUir1jEQgrNGFs5afcXAyrNhxlVkPudEvVcS7kgUqR91SKcQq8uO4AtRN0iDZLkU9tgq85NUv6vVAOZNI/I2ExI1/m1yPFvCYcNdNB48u5i65WM9oPNiITIr/xeY+AqWBRwgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758325795; c=relaxed/simple;
	bh=OYS6lyF4isQAdMuJPfKx6PLhWTeR5KD7sOpMGOzAmX4=;
	h=To:Subject:From:Message-Id:Date; b=j22tmjEIJ27+Pbcr61xaYAEOiiBHsp67c3b+fs0YrvTQ8eIu0nDTLsKIQoCMFuy+cE2CiKJVokf0y5FdKYMzScBdmxP1M8q7WjUbwpKMlRDd9+OkskOIR55+ecMtCTIfbk0akOdOeJ+CG/d3jZEAcOrVO6/xOCllC+Z6OrwVSW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXrgvHqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXrgvHqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A835AC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758325793;
	bh=OYS6lyF4isQAdMuJPfKx6PLhWTeR5KD7sOpMGOzAmX4=;
	h=To:Subject:From:Date:From;
	b=XXrgvHqTgZCUL3YuWuF4Wo7owKk3Gtg+PfDzi+VERezYD8ByqqUURcZNlv8FdA7Rj
	 XjNvjJhjyrWUroZz4P5ehfRYliaZOXhOkvRpzkjFeRvSOdBzmwYH1BA3jR22XpXXGz
	 +R/qopD6/zuLqFAanVkCAFg7GQT+K5c2oPG3ductc9K6QNjd1NpAx+vDxXNWPMTZg4
	 ElZBkDsTCwTfVAOe/sKmQGLVSNjlfNvi/pDXvSHyIwR72CYSWNq5EdOGUX8YjpkMEv
	 hSe/8Uv3P/MIdzqyT8OWz13ygJ4N+wpq2gZKSYmWlOObjWImAQ/ziQ7oZesf7Gyl8M
	 GWIdJ2H4mvO+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95023CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832579357.6676.7837990184299587858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1108c8203e51e325487c7b0abcc90ff331bdc1a299290448f91b76304b03f3
Date: Fri, 19 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758325793
