Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395012594BA
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733994954; cv=none; b=EZpDqk3Tm97mpKmFv0EIo2d9PhDnkDfBqVCK6w+KLv/KuAmBFw8qjAdKrQbum3Zy3eKy/kj43DWdINzZGY4p/scZL0I+QTm+VvhIrEpiiFme9q4qj07lVRHtUVO/G1o2eq/oXGPmut4uRID4JQuH2ZzIRd0fFVvD8DXTQjokOlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733994954; c=relaxed/simple;
	bh=u49gfGocBnN1vta54NQQlj1TzJT0XlKSUPgX6Bby3UA=;
	h=To:Subject:From:Message-Id:Date; b=g03ZdbhZdRJtSW2XtkeBhQ2ggY3BPp1eoJFegT5RW9aQRUw9lNgChMDSpvQeOCkgZmua3HGasL/zIqx0FpBDnX2n+7BulLfL8tzrE9Y4c4gFgiFNOZplkq1thciHX9FdEvJp21x4yQUgyqsz0fAM/id9DX/JtitDVSg6gKQthWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNENUzbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNENUzbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CD7C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733994953;
	bh=u49gfGocBnN1vta54NQQlj1TzJT0XlKSUPgX6Bby3UA=;
	h=To:Subject:From:Date:From;
	b=VNENUzbKnJu2REgrNNj6R1Wu69c3r5Us31iPtd2/30mqf+yobUMuQRAoTXRB7I/I0
	 LSSAbYLdon4xCjMmT1dVTIrwelzpgdmEWSfaNRdFemEot8Ny2xBkZFYvG1jKuIGZrV
	 W3ZfnTXEY2DQ8D7VGo3+O/y6xJokcKChy7HP9ZyyQCSOUFyfN/LW0uOBTGI1LvtOni
	 ODn7QhK8b8eofH8lM/afsEvjsOf7McNP1Rdu3RSRKJ1bH9mLh+AWWlMw9dehPg6Kmz
	 Ydk8Wn8MxHWjT7IoHlgN854SGw//5EwEuyDkvf8kRbmbXyAPZ+pkNkMrAnbyhCWwM3
	 AHj4urOiMUUPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA36E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399495370.9084.9165975779211192212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a58787f7e46ecdf41ec3e98eca80a7757fce493873d99b2ae57cff4b0caea0
Date: Thu, 12 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733994953
