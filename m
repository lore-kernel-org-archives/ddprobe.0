Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F1323504B
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746005995; cv=none; b=VDriJ3i5lV5o2Sk7TqUCLzk+BMOTiTWqx6Eo54fLuV4UTXeQw+s2qpfVql5vOm4ryAJNh+84smj6pVrnRzKOOjXQcaAvuYT2cXk2sIh35AQ9xG8OFQNdziz+NYFFzXDcbm4/mkffwCLkI6TBTtEkX22NzK/0wgXTktosLQQo3Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746005995; c=relaxed/simple;
	bh=ci0Ooj3YzPYO5QQswgxviiq0v7bsKFm/6zQ/DIrXXXA=;
	h=To:Subject:From:Message-Id:Date; b=ouebsZONrwllJ0Udu2uzzS6lU/FWEugUp73I8OMMKuwTFBfUvv/KtMirRK2AZbzNy1jSEm6bx/02jUD3k9kmsVQz2P6cU7ZHxi4FkNzC0gWhuqxJFu2TcWCKVzpqnJghNdZ09/xViVxgleT6VdioYXiuacWd10PYfuvSmD5LnmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYXel0qw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYXel0qw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2875C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746005993;
	bh=ci0Ooj3YzPYO5QQswgxviiq0v7bsKFm/6zQ/DIrXXXA=;
	h=To:Subject:From:Date:From;
	b=SYXel0qwH+Qgkow4jDsKk5QneUKpZegABJFauWpsadoTfRmjFzGoB+MJdEY6J3FSu
	 qvTU8eJMCVh/nBoD2uMizwuKFwUE3lkuFZdJQtSBMa1iMEjzlMVOOcB6VJcX3jxq+K
	 5h6eXGAAYaqDY3CjplXh6mYtLmWUCOnq8F3rqHMX5SLvHKX04B8d9L8b2UGm4lNbWb
	 5qgCGp2DZ3ffI8mI19pHZXnairAql91Wuwvaqea4VXgotFAisK3nksdHHMjSTPFS7y
	 KYhW+TlC6ck7STmWW/IdPe0FERLhbNKjTZMfOuZF50MlK1PxfD67G0iMi4kiQmD/VY
	 NdXGoWPkclalw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A9C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600599357.16291.7881511522220032720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f0538cf097aaf793614524d89190f0f46293995e18643c3e10cd053914437a
Date: Wed, 30 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746005993
