Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B9230F95F
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776839854; cv=none; b=J0G6RLoPSTycLfBUu10UkkZtN8gAaz2mkTto9bAsHLbDlwiiSyqeCSVxATtrIDaj4DA6glVcUl7/MAiZGI3xs4KukY8Ycia1woYNutnNvH3hKgcGZFC0jcZVlLvX+0LyjD3yCf3XF7lnu5HtE7WqU3XocHcvzDFbXUoveznD7k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776839854; c=relaxed/simple;
	bh=qIhzX0VY1UwAV4eqy29G+Iuq9uZnh15g9r9+jAZ1zMk=;
	h=To:Subject:From:Message-Id:Date; b=AX94IBCZZu5o3aC/2lmMIW7PJfkygEd8mvGnPBJX33CAIRlUHf4zK9eU/bcRkEj4zsVnEB5OGW27WmQKhdQhohwahO4BJInLTddD7+AxRMwhKZzqFp3ExiwepFf4Jyz8aZmpdNnzp43W3iQd+j8L7put6l+AGCdMApmT7m2+OAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMmtIjxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMmtIjxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8EBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776839853;
	bh=qIhzX0VY1UwAV4eqy29G+Iuq9uZnh15g9r9+jAZ1zMk=;
	h=To:Subject:From:Date:From;
	b=iMmtIjxWRXCpja4bhWF1rPHjl9wTojWqAcX+B/I0JL+NAiglkfd9gonMU9sxQOy4y
	 I3RqCNCYpOHl3TUt/svBLnhBhtdkQXclZ0sIUouz0KcvSZrdxRVfoPPhSjPQsxZ3Cr
	 sEA0SSvY9oonhlrKo2WiWY94+iospGqILjAVYpaU/lgPiy9S+q9PgE9YhgeJb/5GTG
	 HcvS/W+2a9BOrUqh1aWDbbLYivMBU6Z7CXgwHg2EyvC/h6l3hRpAatGLQ0QMm0EFvC
	 JVxIbBlKPrejnrbB62NYjQxbhC2392BegN3gxC0wsb3XXg60nDlwl5eEkw/+VAFZu6
	 kXMQPOwZMqpmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AFFF94CCF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683985368.2355.15883645982760452597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7570c8d0571122ce41f1f64bd9495fb18075d29546efd2d1ac105c58aa0523e0
Date: Wed, 22 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776839853
