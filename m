Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166D430AD1D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770362634; cv=none; b=g3LHtQJUthY8uqV4BF0cPiCvK6KkoyVx+mICK1tQwhUK5ou37L4FLwNoVEM7bJZPl5ShbreYpsxoH4wzzJ+uAXlU25dNJKSL25D0i0n5wjua6fvdOO0NkQ+yuk/d5kKVMht+NpncjHXR86Xnqt4gY6hS/7OkJIdFAym+xEChY3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770362634; c=relaxed/simple;
	bh=cJChGnXwpHxHeWykbS6C9vxNcKEw93I++ntCMdd7Ku4=;
	h=To:Subject:From:Message-Id:Date; b=HXRSN2CErxDgAVK+NjakZ0V3E28Oy1QQUoXfsd/Bcky4D61OOztHA2/e1hPqKbVhU3E2XeJ9v9XMj/wpgdQLCzFJbD0lFomGQmQfLR+TuK9zyijwbzjbHs1gGajiwVtL0lnNHn6gTp4UZJfkifcBIy6wu2paEavVzu9bT9+j3Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeBBmz9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeBBmz9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA26BC19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770362633;
	bh=cJChGnXwpHxHeWykbS6C9vxNcKEw93I++ntCMdd7Ku4=;
	h=To:Subject:From:Date:From;
	b=eeBBmz9y2nkFIc3w1fuhk55a3q31PbPPI9ED4IwDKovlnuOuvBwdLT0Gm61bydORR
	 9z0ToqaUht6VCk1XhoU6CGjgq0JV/YJ3Kd7Z++JlCJZ3Jhp5/ajIzTb0vj6Zho05NG
	 SkP3DmXXjKnttbXZlgns2/3lSKKg3Hfs5Pv1cO8PLxwz3j5vyf7QsYua0p42Rpj15o
	 2rBJ44Y+hn5kjDCo4hpPIvu4zoQ95t9WggaFRXnxA2vMkZc22vrUNZveFJG1pc+/nu
	 MdKIOZM4dhou17v5n5kcx2cc9Bpz9Ay5IpcwEaNVnUhBtUgKVGLt5ZnjFlzYumtwjk
	 uW3cozhbQEcyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DFEB28D4
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036263358.20050.12734242031264709858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f76a8d7b8ff730f65234eb0b8da01e09af71e08dd53a5984df4cbd4bcb20f8a
Date: Fri, 06 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770362633
