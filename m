Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FF3498938
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788903634; cv=none; b=J4C8W/XMrlykW9zS/f/WFG/tuKJrOhRlmtH5UF/oLDvVPUAq5Et53x2rxts/USO0sJaZU5R+9dwfJIcMiFT+o/NSfDUzI8kS/G2kXmAUixByUJ4jVT4A7hEZUeBji/cLWIY1bSsNWn0vGhjOzbGbpTaKhqFfXVVwVqpvdBkh6qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788903634; c=relaxed/simple;
	bh=EmMRU3JJ+RP/LDjlZbB+NQ1/7giTGrLQeIdvcc82H3s=;
	h=To:Subject:From:Message-Id:Date; b=nu0GH0vci3ohQAmMbj0JUD36RhKQKPFWFQPsS6dvKQYLQA2gnOczwgOYYJ37h0u+W6ObeDORRMit+JlBJcxz97ksprUoGahYp8wytKOQPdy28xCDYuy9+FYPf92GdOouGdY9hoVWTRJpK/oNBZUFcZY6bB8FtzHNbl+n8qHO8eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFDuF19t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFDuF19t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F7DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788903633;
	bh=EmMRU3JJ+RP/LDjlZbB+NQ1/7giTGrLQeIdvcc82H3s=;
	h=To:Subject:From:Date:From;
	b=uFDuF19t3bJWWRIYKA4YpEPEMiB2b4gzu3iy0OvJzZ7k1diXUd5wSwaPS182UzPQn
	 Bo1fvlI8ze10JNwvZipQMeS9tXiRivrk61q3Zjl6c0kimWqmOaNVNcAwbdDKYkmecU
	 qfXYE5rzl1I/FghIRoaXI4VG7VjjkdQEYRGM8ukM5qJ2vB2TdElX8TqRBHcHGn2QGe
	 xqzHtAb5LYpEWk/RzEKslH6uAJdO9aSCCtqNxYs15HrFGg8Hp3cKaWZqcKdWluLp+o
	 qjYtW4vNE0cyg40v9YGlsxBC4AZCSlymZaCyEZpiqNL0QVUhrWKoOCcSlogJoxv8i3
	 SlKvAjq0886Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B497AC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890363372.22831.10677692148903209278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5858cd9af34d28b8ea0e2f1329986fc8f1e9ef29dc6db1128ddb3e5f9515a6
Date: Tue, 08 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788903633
