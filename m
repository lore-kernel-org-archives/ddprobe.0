Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CB833E371
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764850374; cv=none; b=uyBNMyiL50L6Dt0j70zYdUZDHQEDcuOXkfIUGK80Z+Zycf8Jk3f9V3FOONqVOE3GiBtOx9lqP+wlsiYE2FG684qvc+eypUQVh3fezL/CKvWcOf2QrTLGjS3HgS6/kUYBebfvt7puW/BHgAwd5SDC00VsoDn7VrYS8XbdYRqOLnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764850374; c=relaxed/simple;
	bh=AU5EIvifUThKSHDtuerl92FwZiV1mm+234uQ0jYuchQ=;
	h=To:Subject:From:Message-Id:Date; b=pppS719rOH0P29A7WJ+1xcuSmzYxYrT65iHwW++tPTEuhlGa5LgewfTqj+G4w8sBVwy+JsvxtcEc9x1jOhnrBvVwweCTvotvz2xrgenSWLnX0VvmrB8roCjMlOuJ4oa5n9ZtJOqZ7+vqhDaClEL5SohMCEIpR5g+71wFnNGd9XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJTttnvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJTttnvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E3C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764850373;
	bh=AU5EIvifUThKSHDtuerl92FwZiV1mm+234uQ0jYuchQ=;
	h=To:Subject:From:Date:From;
	b=AJTttnvkCDBo8YxSxy+QkPXLuVrIYdMh3zy8yPpp0c8qfzPHpVaF3KggqxE+Wx3fS
	 eNnxIOnHxG8ayqfuwOE4zV9k/fO6MvSkrioXuZbJ1e73bcVp9TtHG22OlU3VdDr3Jp
	 318mOnzcWdBxDlI/iqsum1dQ7f/goeEjGGugVoWFDFpucENPOussYpWYPVKTkXuvq4
	 NiPVL5rwXYmMtjIhFzv/pXDTtWUGiJyJKQi3kLGnBx6OmFp6CJY4rffgla6HU5hiRi
	 0FVBIquFGSdEtUjL8GjqIH3kFA95YgOP2yC+luFs8mthYDcm3HLx6YjTy7/glqL8e9
	 P/3/eOAQ+eTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ECCD1F9D1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485037359.22525.15853011869028864053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09d3f95426aa3ac4884c2e2ffe5049aaf6e7d4e319f3c4d59d5f0012855f45c
Date: Thu, 04 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764850373
