Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3373126B968
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746776394; cv=none; b=KQQ2LnOWc4kPGoOzb7hAJ9sSNyhFCaX65Zd47Njomav2aDdZpp9H0iJN/f2d7oKwNyTssR5T4imDVdMvRHOS6S8V5WtnHtKOgHhhkiHU9EyXa1dOKIKaQLgs3ly90qiv95sbnHt3wYaZAx0M/XNdOydmIts/A+NMRZDcmWomKJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746776394; c=relaxed/simple;
	bh=OmzW9eWp1htSjnstPgKXbFzvrmhdtf7Y5xx77U8o7z4=;
	h=To:Subject:From:Message-Id:Date; b=mfYgUN8pgMf8sZEVqFnY7jZdUdF56BbkB7ej5q4FE7213kH1oXhVkzcWwC52AOQDnhU5VjXKYI6hkiP0FGbeHPOSBlM50W8Rp3G75sz1dyj2bKgPOys4Xw9AaW/pQk/HjVxVOU8BJhfNP+6PSMcubQ4kon/WBlRkDztA56VQsWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcugSVAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcugSVAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B7C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746776393;
	bh=OmzW9eWp1htSjnstPgKXbFzvrmhdtf7Y5xx77U8o7z4=;
	h=To:Subject:From:Date:From;
	b=FcugSVACWejs0WB2v3xd+6M6gIFXdM/cSaDj1pwNyqzk4E2w+Csq4RGpmmLXOONuS
	 Nyk3lhpaFQtDpmavo9eD33b+ZVFMsbInlIzQnWlOlp2lwQPwCVqhVSA2hrmWZF0oeL
	 ZIO90P5uw6n7RyE0UjvWAYmCCZU2xdmeUIoO1/RYSbkd52alq3OwzihhjfF+nFHLfl
	 Vib41y2NkcAo7Hw5WWMJRyX41LRB7UW3p3ZFkggCn03HdDOkthtAzbQRYxXkBPvb9l
	 qSgfO8Qsa7xGZ3kUI3RMk9QyS5LLpL6ODt+BMRXDBdSXk8IeLM12Mxhy30az1M75hg
	 MYqM9DJ9k5bFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F7C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677639357.16351.11902643778797330726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2587c25c6a49b6bd7469e139caaac70fd012676123e1c92fa52c31f5c4dacbce
Date: Fri, 09 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746776393
