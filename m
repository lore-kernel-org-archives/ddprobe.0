Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C64044E645
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784917834; cv=none; b=F/umF/FlJwzKKfX0MdnuTXklTBNLNrwi0KvVPAJTOLYE7hDUfuKh7XnB/jsN0uexpwGgU/IF0zgcHrvt2FvJOF0B8HQFgToWAb3x3H1FVktSYq/9bJw0QXescSu0YcNXe4xn2+L0Gw46oOfHKpoJBZKqdzdSr46e3Q4lghdbS68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784917834; c=relaxed/simple;
	bh=ua/+sPTVFCcq22r9hrhzEhj0nZmdI8Ivi93KtA/NEwM=;
	h=To:Subject:From:Message-Id:Date; b=AUW1w7nuZ3t05QPo1UBbXzBZXEa8ESN62dXyfa4LIqJL7x3MAEp8IZrsGOC4b3IdQh8M4GGJ/vb7kahHkFTzr/tN5kPw1OQgEvAUx1PtlYRBpN0W1lE56tklFD4o9W2lWw6/q8KO1TAyQmkbMHqHoMfMtywNxrWJZj0AxsAo7bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3JQltsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3JQltsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06AFC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784917833;
	bh=ua/+sPTVFCcq22r9hrhzEhj0nZmdI8Ivi93KtA/NEwM=;
	h=To:Subject:From:Date:From;
	b=H3JQltsZ3EsUxMwCwsy23NcTKkZfNPJaTW88uShREDeGCsun2vO9zyXAdnzoi25ml
	 Eb+SVGNpjMlc7UtnwDJovcjVHg8XUMOsx8AYCCDMJN95p+3jPrWXHnF+GwQ2day5Z3
	 M0bSb609PcsRWjcqDRJhUDSy4unzxTwmovVnPsMsU5bBB0ICkgkhHoQpbg1mWnRZYm
	 gpYjvvj8FkOvMRx5g/icClgvEHGfCMZPzlBI66Jzra+vtTjHva9v6/48E7LKBoAZAl
	 eEXPh7WPKqsZMJ7TLbK7BDGwxa2o4wKlHRjw0zU8QSaCgPy0gjqDWTPMHbch7ietip
	 ZesgA2crFhX7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9DAC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491783368.14194.3394418191712874950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1f7bf2910034f3686dae15b3e332c836e4b31a09e9156ea4c99d8a88cf5dc3
Date: Fri, 24 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784917833
