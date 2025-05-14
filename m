Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6021862BB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747199394; cv=none; b=B/psGOnM8sJIh3Xc/m6PQmf1kKNT7/yIJMBhnoGZnQNJYMCHgjavgI1LJAwpH4rw6fLdH8OyvMGVDzd9E2kP5rDYi+cuD66imbEmp9y2OUby7/disvur0veRbsUD19emY0JFG9OqbtoBPkNRZp+HC5DLe3qLd+7SfImjo7AaxXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747199394; c=relaxed/simple;
	bh=15smqe92X+FyHMNL8XCSDab2saQbyAB7ozfgMkS9jik=;
	h=To:Subject:From:Message-Id:Date; b=P1yXNNhY1+KEDAuPSYrSRJnBRUuiQ+/PaBHJXb3wbq9ZVRc8kK019TkKxMgBNiETvJ3GUl/fq32XPDQsaoVtw/bDRfFnfPCoKZT74fxP6pSctpf0VFgGWinBVcpFr0OsYM122Jh60FjZt8Nz0MdzQhfzJOux1JrB+tXeZO3nmWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK7enr+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK7enr+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBBDC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747199393;
	bh=15smqe92X+FyHMNL8XCSDab2saQbyAB7ozfgMkS9jik=;
	h=To:Subject:From:Date:From;
	b=WK7enr+eK+aVSziN8C3MTgigJOte8JDyZ6qYJlZClKS+S8Fh0qgtt/4tdcKH+l9gl
	 /8zsVzhLeeXNlKwHTIxYZAJz/auFXfnF5tpQHBxB00PLHGpvH02UwehcDQzBIARy+I
	 n1mhWLgnAesWaS5GtNTIyRmKK91+5D/7iPNhSlT8+SJ2R+Zo8KegbzgaGECVvN5mcx
	 0hx+vYG8aRlG4nqH5dcXDgApQputrngZzN7fYt1bDuPwuv1Mpf9hrq4vw1LpGZ5tC2
	 TumK9M4FmAkkuUmRfg8ZZckmO45G2hZUn229ZFEGnbzz8iaSsRbz9vnnH4OEkDxQZl
	 y+3Dhjs+SDI8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E56AC3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719939357.18534.7063278811166025944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd31ad192ce21dd271ad2f411ed097e1ee4d48f3b750caa06b8e79290e22cc5
Date: Wed, 14 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747199393
