Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E9A63D
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728618354; cv=none; b=gM9SrP4JKLZLhLdize2/kf6TwhGZwAnPDmR+O4tnnVr8CJS8nFkVEbFC0NPJGZ5gOPP/3sfzhCqB9bUI554E6XB8dlgJF7qghyqA/eorsDPUzsW2VvlmYBrVFrWDb33jo14yqUdfRYlyVFtOsBx81PAdEbmw5uLuoonIIodGHDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728618354; c=relaxed/simple;
	bh=gSUqY5Jz4k19KJIPdVX2fgrrUU+BmIotNrGv36KRmms=;
	h=To:Subject:From:Message-Id:Date; b=OXvY6VbI5A26/jJoPntOLGPrhlV+U5LV17zP95fi+Q0RQ6ozGZeGW5dLCcbaGEMfeCwz0ytnPIo9QBQzT5yQQL8zBF9LkOymzAHVjpSWoLTSi+7kLIxn/nF6IiXpiasj9DHkjao863V56LWZywZsMEIvWYZRhSLoyOxMx9I5MqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEdb22fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEdb22fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6773C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728618353;
	bh=gSUqY5Jz4k19KJIPdVX2fgrrUU+BmIotNrGv36KRmms=;
	h=To:Subject:From:Date:From;
	b=BEdb22fa4BYlZ+Tum6xOPj27ul3E2x5cnBPtiMZEhrDsK7WBppDbLAiNnvTyFnXci
	 JIK4HOHBjXApCSUjNxEhFZNPnI8RC5XSSEmBuoQJKPeJRBbeF5XzzI6hquzAqW7/SA
	 V4z4lZAKkWYDA1G8nnJCD7M+/81j6Qw1//ZxPBx8N+VXAz5g5O+mTzZPSv/lJvRAUv
	 /WbpYXl7H1cRuMg5RO7vUipj5ofWUAHETVnoT5gWTTgux3ZqtI+KawrHuo3ndrhJtU
	 +Q4rhUBUaz0gwtMO+dRgq/CLRI+VlcAs8mqIlIFx1h54jixcE1V+qDlnrL9G3tkWqD
	 UbOjdbO7vcVoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C53D24468
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861835360.15488.4462300496483911641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe76acc477464e45db7f4a0f79ac4566c7cf72652451b938ce87118b54548e29
Date: Fri, 11 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728618353
