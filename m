Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87968143C61
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763466715; cv=none; b=QSq5eGRBDakQ77EVB38gJ2iwlxfuxMgJ4JKPyzZf7zWUKVBQMZxTO2+NJLJMsWDtGXfV23co8gZOygbOHRAlAnH5jGJRGf7JoeXAyfwisYq0iszerZuI7qxwIquErZtr4PNavht8aEg5c+7rGaZiaSo8jCl5eyvk3BIsyEyUpxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763466715; c=relaxed/simple;
	bh=RoEghdrTfh/1KaFdbQFbZMEkE3yNXUd3JDgcFtz9abU=;
	h=To:Subject:From:Message-Id:Date; b=RU6LB6+b3y5uBZv69jqTkwrbqo6cct1iNsvaaAElOrg8gUlFZX6AEpMxbUgks2BTPcGZBNXr+Q1udrs6EPR2/Ad9TwbSxPOY1gHVCIuTvAq5a73A14e9DjPoMlNhlST13/pLKFdP0b/098puWFyd2HBUIzZbbWpEQw2il/rECCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brwJb0ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brwJb0ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93C4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763466714;
	bh=RoEghdrTfh/1KaFdbQFbZMEkE3yNXUd3JDgcFtz9abU=;
	h=To:Subject:From:Date:From;
	b=brwJb0axFei1pO2pbKEAzw6q9JRmMjCVQxFuZswS9ts2FewAJIqRWuPx0l1ascC/g
	 +YgfcRN2Mk4EuRdou2Hd8bXenhx1CUbsuI1Wi1MW2IzFrGHvXkaUGVJHYmK3CCpJrU
	 /V6E2da+fubDSc5Gr5Cs2cr54FqxHRQ2k9pSQA9BOL9WLcxV5J7gzBzeaX/JyBFZSx
	 IHZesyxyBrZq493+GYs1tX0VujhKjb3guhxjVhIb8EgiI3fKIuXLgqscpJB5ewY7Sh
	 04mpMDDc6jH5+Y8I5SfUHF2aWUHHFDxFuhOh3VTTHgeNrEjjrVH/81ZPYLItTPYHnQ
	 c6/5ZZBJQBHrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E7CED626
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346671357.27952.14216949069082180057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f42aac2733bf935140f19e426194f3d38fb9c6a5432deaec5d34bad83c3f52
Date: Tue, 18 Nov 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763466713
