Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB312FFDDC
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760407194; cv=none; b=HUqQdD7zIdbSMse+e1dad8qRDSIrGDqGDH4uVfiqZ76e8BfFB8L/GeyuKnKzgcxeK8JtmQkrntwY8l++Xndx/FH7uY/Fj+XFzlFP1vvfEPY021wHkfE5TyQ6k1HaXFhaaSLYsWLfd2hFxFwGuyRKbydGa2+rlNmRmE9/Gp8r52Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760407194; c=relaxed/simple;
	bh=r8Bm5UjP6cy5Asv1DvdGiG3Ga7HbNilWK5JcqWbigCo=;
	h=To:Subject:From:Message-Id:Date; b=QXGFGl7sCXTh07CUhOCGHuL0xgJMDiMAmsJDAgH0kHw/5B7Idg4qM8dShMOrm8426/OtG9NOfgkdCEN8R/0WElS2iFjc9cx59HdAscun0jO+sGzie0BX/buw1E2SXRQc7QK1orOhGFEQyWyPLlisHtW3Q3S6hRAJsiaNEVK5AjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6yV6Cx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6yV6Cx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24BBC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760407193;
	bh=r8Bm5UjP6cy5Asv1DvdGiG3Ga7HbNilWK5JcqWbigCo=;
	h=To:Subject:From:Date:From;
	b=l6yV6Cx6bBpbiqSZXjY1Ealq83/6VBKdT/jUujgORCMsUTghim+tgK9iNp1NipRZT
	 vqdQmVIXeFat8YhXp+xkLL2WwQvB3Lq4QelIAN6winYwqnMiR2MVaLWg4bbhWWu27I
	 Xv5aIg5zOsYSwsqc06FGWUG+FuCn9CuY4Y/BGIv5+H+H0/MJcFfVj/ARiqB1MdkA6G
	 0OjZYEhis4M8RDMnIHQuVQzYPNXRaa+2Ci3AfwHWcwCSr4aFUcwqAOFW3qAjcD1vt3
	 XQ4V/5XgReA49UvswPKK5FMkXneh+ljjdI5ES6S3BQUUBvmx45qfdFfbrItYCxbgfB
	 7xgEIJ6U0t1XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F837CCD185
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040719357.22089.6713311557451073589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387758290d6b9117fdf558b917f4206f4afa2d1fc29c6fe55330e934751635a9
Date: Tue, 14 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760407193
