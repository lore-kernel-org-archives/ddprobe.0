Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3522F285C89
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766738634; cv=none; b=rHChIg2oZedA0Sf5g8E6zqgpckT5VefIVhvOnb+iLEdOHQLhsUerU8+n6Btk0NcAm3uHAUXjLuw5bquGkOqChukZGlpNfs+2AFkFmPh782FSQFQuXD+b3GABDJHb+wOI1v5MTh5LRzVP8s/NszuGMY8qlb57lAzvs5wmUwMDoHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766738634; c=relaxed/simple;
	bh=b6a3sfA6JquAalVgcuWtFr74XXUUkUBqcLNJdElBEw4=;
	h=To:Subject:From:Message-Id:Date; b=KmwhR3A+CM+Ol/Q71MRZf3/fDRH8J3YWfdOVwnrsJdZbX1JQzs/GgS9rukFdcjikleGlPU2zXgTYd3jpUARCBnD6QMojhJ73UpLDjvZD7pu4PxKqZJhMdUFMMXOXJi6ZKQudhBAtFoyyiq9hsAamePIOtciwSggEC/x/7JQjoFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmlczXsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmlczXsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E3FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766738633;
	bh=b6a3sfA6JquAalVgcuWtFr74XXUUkUBqcLNJdElBEw4=;
	h=To:Subject:From:Date:From;
	b=PmlczXsTf9fQum7dXJ7wc1iMkNV8ICT6Jt3AuLfYRE+TSgyS93fm4BFnNgxloun+O
	 50fNoL+96UQK34UJlKMqtG5igQHI4OHGmx25QLA/s9TZUYzlzpXngJFJ0pDjj4ClFZ
	 Y0LIhdw5E6S7/MBFxIOX8/gsklB+pBRrSO93AwEFaUg1wWDOEfJvlfcW08khQpg/S6
	 jGbfZGvKpH+fOMSctZnO6gqBsH7JKyGi4tV46cLqaVOgZEuVD5zJmuUJghttIhXfm1
	 b1IDyFLY5P5UIb76IJxS4MP5VKMGb2R67as9uW0t/EPLX5tpf8LxyB29qtjrqnfOww
	 /4S+RtfEu9aCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D46E8FDA5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673863362.13684.17483306776640283616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4b6a32486f2f8def08456d838574a9e8dd96d8e76d2f8363c216d0213a0df1
Date: Fri, 26 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766738633
