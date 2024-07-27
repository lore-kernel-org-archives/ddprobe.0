Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D4D1B86F6
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722087954; cv=none; b=n/PCvSTrWL3r0pP8bKFb/Xy0YN8LMeZLlScEUxmpGUn7qVSm04e7IWE2TfeLSYPgxKjpG6th0+bVNTSdGZC7tWkU4731ATcB+rFMVDfdkNhwi9wurd0BMUvTxcD7FxeEAaMmVc0FWfE2IVPB8lRwWx2fvuxTgJyELWB2zQOwGPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722087954; c=relaxed/simple;
	bh=KhAkFXdvb7aihpL/dc/SwSoNYjQyWjTlv8yv98NY4V8=;
	h=To:Subject:From:Message-Id:Date; b=DV2gd6Pc2ogiy9pQieOOgplAlDRjTRwiBsHxg1G7WfiudmO2bZhHPEWSYBxf71G+ZQsn4bVPhbOeQ8ovwZ4IdgjLnJPugWIxYN46s1Ra8dcls6Axwv0/8B/JPr5b48pjlTauH8CcFR58yV0ke+oVssItNUEavImaiuoclAPyIso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQmKMS/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQmKMS/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97D5C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722087953;
	bh=KhAkFXdvb7aihpL/dc/SwSoNYjQyWjTlv8yv98NY4V8=;
	h=To:Subject:From:Date:From;
	b=SQmKMS/7SdvY3MX2tSUqpFAtOTUIJT/lpKZf3niJsrHxVTMk/QPwFdO0/4QF5INKx
	 DxDBc+8ocVByWxlR46y0uOXFY5KsfXkMM10/GmPgDUpP8k94V9XoowI808Iyhz7ut8
	 ogd2ZuvpTqWjJR9QnCoLNya1Im/JufUae8GL4f77pMObtUlr9+PZC7nHvxh2N7dP9L
	 4qLd9wyMnXtG7xOMMQ+7bzlyoJ/9tb7cmrEvXHAlvsE45kpNg8I3l1USFnyc3Q+Lk3
	 DZgtVuoT/xU4i8qXkzPrSJiMvkX+jVnb9PtbwEedyx8/CSHQraI16XlMS0tQuv3aUF
	 VFjoGBKDasQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92157C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208795357.19111.13639984041575954432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8619c8c5d5e64483587bfe18068c2515b04a1b152409fba8be73de81609bb2b
Date: Sat, 27 Jul 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722087953
