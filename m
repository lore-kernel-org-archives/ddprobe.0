Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DDF15F41F
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732519554; cv=none; b=lNjqHkmpCITblukPEgjmeqcQ0s880xmOXVdh343G0o74+Dt+3JAoKOx9DwSjxE70W8yFlumtM7QyKAMj2xVqOg5nnm9sLrkfW9bm3wZ9cW2c4rSDsbFB8AckQP/OwnORzOaRrn7fTB8QYBAWRpqNSMWWGQHQeN0yRG5mTmP5uYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732519554; c=relaxed/simple;
	bh=UxVogUun7mel9snOKsaB++O3Sk6BJHrK553moiocAVg=;
	h=To:Subject:From:Message-Id:Date; b=GMKB/4CUTsswlZ4IFC74IjJQ+wkSEd948/HHzKsHtoOlmq4+tMpQbTu94QTq3qsMjVmx8XWgz8sQCZCjSr3SxzXQNiuM37HF9g+ZOIkdaqrmrTKiHIkdO4swPWVH+O01/fqOBit2lLVs6QIdDvIagiiYDABqnAJUdbx/BbFjAXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW0Wj6a4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW0Wj6a4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE90AC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732519553;
	bh=UxVogUun7mel9snOKsaB++O3Sk6BJHrK553moiocAVg=;
	h=To:Subject:From:Date:From;
	b=hW0Wj6a4JbjCnA+AV0iqC6S80zLlbA/TaMUgvJhhXsYKniY0kNz0KJSU2jcIG8ry7
	 mbt2tvwZo42/uwWeuu05uh0cCy+uA67sqtQQACSFe26pIWKwQ2W8gLt9gClEuTbln8
	 Cy+Ugkp43baZ6jWjRC5xkYSgGonf+1CKKKsElDVxKZZUOp+/lXvaU8qdRFMR8z+tsH
	 64Oj4IBq9IXict3CUW9Z/i450OCPMZmomkPoc6qSVkV6vbhbTcRlY4q8ku9YG+tXrN
	 1lAcNCUJPAKAq+CcBbyFdmBik2bgXa2hu2Q8wZrxaqvNQeiQImmyaYoEGIDfGC8ili
	 uL7nOyO9hQjYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96854D3B7E1
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173251955360.10865.9689155053303744538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f1c6f6d600e1a909896074601b6925d848f30bf7be1ea7532d402c0aba289a
Date: Mon, 25 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732519553
