Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B78B348C54
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792281034; cv=none; b=prtQZ6UyoEnPfzChrHhsA6ktwFeZKyBJpiaG50pdhBtlWQ4j+WhgxjF6wFCn9ppnWqY7/Gk+g6FUgVr8+bsZ86MnliInlkY9J0eN+pDk1GUA6podDPhT5ef44ssCAkFugzXbrlvXOd49RsxTx/uuLH/q04woY7GLIbDITmspFI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792281034; c=relaxed/simple;
	bh=9cLmtgAzz/JM9I915CwBruXzaaari7Z+w0soNWwExT4=;
	h=To:Subject:From:Message-Id:Date; b=qxs8Mqs0fWJVd9bDRGZ0wEU3mKv9rORfb38tGiHjVc1N7CASGnCm5C3kRzvm6gSb0Q75JFgaRw1Ps4lULiYJfV1LDuwGBLP0dEumctXZMMn9DjgpLRnRVZh49rVmH41WXylChXlUHoal0cquTmfF6Q+wDKvatr9pd8moYhzdV50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVuH6HPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVuH6HPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E36C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792281033;
	bh=9cLmtgAzz/JM9I915CwBruXzaaari7Z+w0soNWwExT4=;
	h=To:Subject:From:Date:From;
	b=AVuH6HPP/RG+IK/oVCNr3i8SV1kQfQZO83by5MOqGakx9gyc6b7UkkRjHVQCAv/uM
	 mObjNI3MdTvJE8clycYkKWINJYS5o+I3CLBQ7nMA31D3c1ATflLSn6kBCZ2SeTfoLy
	 YmiAjAQ60ygL81D80xz+jnB2UR60sMvEmarOWLoKdU4tXybveCpzXl64xqmrdOXh31
	 5CutOZl535RNJgkaQ7rJjMhl5TbKbE+tBs2nlyEMsSflmjo05TTTtpPAlfc/ViUtEa
	 O5qR1Q7W3WCyM8xMwBfWSO2QhC66eOimCW1tG4zrJktsdGbqijcdRtxnvflPvJNnRd
	 0uARfPhEeYRsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1273CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228103369.17383.13152226091420265224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a897686cec019859d4362372f322910475ade419f9be58e5933f58657ae89aa
Date: Sat, 17 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792281033
