Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B977253B4C
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744903194; cv=none; b=RZ7o9Y7GujaBjh48iwEB0h9YHQE0zxZ2yyKgC7EG4g9lwhD6VQ9jmB2i89r5Yf9Q9wEh5bhoAx0FDbanuXLpWZiBQT2guCUsSn8Xn8ttmTNCQ1uA0yp5PwWU0/2CAmSd/H9GCPCUsdt6kyy/85R5S5aYjb16KtXdQzJ+GaWb28E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744903194; c=relaxed/simple;
	bh=D+tQ2+bhlaZV77AxDl2fO8iSOq2OvyScHwkS67H2IaM=;
	h=To:Subject:From:Message-Id:Date; b=SBsrWSuzrq6ROapm3N4yyVZU/ELBWGsaUoHcJfBaZWOwlXHf0RVRXbJm32dbXtqvlSp36U6Xikb43wJR9/xXbgQgL8LwCIehYttsIwrcDEvATTKpjC9XTRmzDaNm9bPqMdB7Bfj+J5381x7zsCzTNtAhgNLvFGhMWHhn460+o1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lclqXqb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lclqXqb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B768BC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744903193;
	bh=D+tQ2+bhlaZV77AxDl2fO8iSOq2OvyScHwkS67H2IaM=;
	h=To:Subject:From:Date:From;
	b=lclqXqb+3O8SdBBm6lDIJ6NUnFCj+ujIKWZ2UWbatxUN4uB8U3VgEeIUauopmOmQE
	 erxEw1JC9mxi4W8PJMb2ex1yDjGX3AwV4oNLSCMpdSXjo29aprU9mglNI3h71HEAJu
	 uQ3pzwX3YjTr8YurQrKhYFqSLb47OSjIlvDnaVxR41olwlRcPgwTOyNzersm6Vr64J
	 H5LuwOy8wmO9kE8JdwRTKwpKFeOuDjuvUWKNyGyEBoBaQj85KpZ2wai2L0wUnz+95X
	 VKT8QtYzUT6GyJWlyHRXszXWsCS0knvFLcUZm3+wuz2OklB2ubhwt+TsGq5RFCdbrO
	 6zmoCunK2vcGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7482C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490319366.9532.8692973773938647595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24f1549252e54e764a108fe5fb61a2c77bb348354a499d537ba2b3d9bad4473
Date: Thu, 17 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744903193
